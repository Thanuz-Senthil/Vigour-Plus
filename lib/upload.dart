import 'dart:ffi';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<MyHomePage> {
  String imageName = "";
  XFile? imagePath;
  final ImagePicker _picker = ImagePicker();
  var descriptionController = new TextEditingController();

  FirebaseFirestore  firestoreRef =  FirebaseFirestore.instance;
  FirebaseStorage storageRef = FirebaseStorage.instance;
  String collectionName = "Image";

  bool _isLoading =  false;
  
  @override
  Widget build(BuildContext context) {

    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: _isLoading ? Center(child: const CircularProgressIndicator()): Column(
            children:[
              imageName=="" ? Container():Text("${imageName}"),
              const SizedBox(
                height: 10 ,
              ),
              OutlinedButton(onPressed:(){
                imagePicker();
              }, child: Text("Select Image")),
                  const SizedBox(
                    height: 10 ,
                  ),

                  TextFormField(
                    controller: descriptionController,
                    minLines: 3,
                    maxLines: 5,
                    decoration: const InputDecoration(
                        labelText: 'Description',border: OutlineInputBorder()),
                  ),
              SizedBox(height: 15,
              ),
              ElevatedButton(onPressed: (){
                _uploadImage();

              }, child:Text("Upload"))
            ],
          ),
        ),
      ),
    );
  }

  _uploadImage()
  async {
    setState(() {
        _isLoading = true;
    });
    var uniqueKey = firestoreRef.collection(collectionName);
    String uploadFileName = 
        DateTime.now().microsecondsSinceEpoch.toString()+'.jpg';
    Reference reference =
        storageRef.ref().child(collectionName).child(uploadFileName);
        UploadTask uploadTask = reference.putFile(File(imagePath!.path));

        
        uploadTask.snapshotEvents.listen((event) {
           print("${event.totalBytes}\t${event.bytesTransferred}");
        });

        await uploadTask.whenComplete(() async {
          var uploadPath = await uploadTask.snapshot.ref.getDownloadURL();
          
          //Insert Record Inside DataBase
          if(uploadPath.isEmpty)  {
          firestoreRef.collection(collectionName).doc(uniqueKey.id).set({
            "discription":descriptionController.text,
            "image":uploadPath
          }).then((value)=>_showMessage("Uploaded"));   } else {
             _showMessage("Something Error While Uploading.");
          }
          setState(() {
            _isLoading = false;
            descriptionController.text =  "";
            imageName = "";
          });
       
     });
  }

  _showMessage(String msg){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content:Text(msg),
      duration: const Duration(seconds: 3),
    ));
  }


  imagePicker() async {
    final XFile? image = await _picker.pickImage(source:ImageSource.gallery);
    if(image!=null)
      {
        setState(() {
          imagePath = image;
          imageName = image.name.toString();
          descriptionController.text = Faker().lorem.sentence();
        });
      }
  }








}

