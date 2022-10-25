import 'package:app_ui/Patient/update%20profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class doctorProfile extends StatefulWidget {
  @override
  _doctorProfileState createState() => _doctorProfileState();
}

class _doctorProfileState extends State<doctorProfile> {
  TextEditingController ?_nameController;
  TextEditingController ?_mailController;
  TextEditingController ?_NICController;
  TextEditingController ?_addressController;
  TextEditingController ?_phoneController;

  TextEditingController ageTextController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();


  setDataToTextField(data){

    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Full Name:',style: TextStyle(
              color: Colors.black87,

              fontSize: 18,
              fontWeight: FontWeight.w400),),

          TextFormField(
            controller: _nameController = TextEditingController(text: data['Full Name']),//name
          ),
          SizedBox(height: 20,),
          Text('Email:',style: TextStyle(
              color: Colors.black87,

              fontSize: 18,
              fontWeight: FontWeight.w400),),
          TextFormField(
            controller: _mailController = TextEditingController(text: data['Email']),//phone
          ),
          SizedBox(height: 20,),
          Text('SLMC Number:',style: TextStyle(
              color: Colors.black87,

              fontSize: 18,
              fontWeight: FontWeight.w400),),
          TextFormField(
            controller: _NICController = TextEditingController(text: data['SLMC Number']),//age
          ),
          SizedBox(height: 20,),
          Text('WorkLocation:',style: TextStyle(
              color: Colors.black87,

              fontSize: 18,
              fontWeight: FontWeight.w400),),
          TextFormField(
            controller: _addressController = TextEditingController(text: data['Work Location']),//age
          ),
          SizedBox(height: 20,),
          Text('Phone Number:',style: TextStyle(
              color: Colors.black87,

              fontSize: 18,
              fontWeight: FontWeight.w400),),
          TextFormField(
            controller: _phoneController = TextEditingController(text: data['Phone Number']),//age
          ),
          SizedBox(height: 20,),
          Padding(
              padding: EdgeInsets.only(left: 130, right: 100),
              child:ElevatedButton(onPressed: ()=>updateData(), child: Text("Update"),)
          ),
        ],
      );
  }

  updateData(){
    CollectionReference _collectionRef = FirebaseFirestore.instance.collection("doctor");//users-form-data
    return _collectionRef.doc(FirebaseAuth.instance.currentUser!.uid)/*email*/.update(
        {
          "Full Name":_nameController!.text,
          "Email":_mailController!.text,
          "SLMC Number":_NICController!.text,
          "Work Location": _addressController!.text,
          "Phone Number" : _phoneController!.text,
        }
    ).then((value) => showDialog(
        context: context,
        builder: (c) {
          return AlertDialog(
            title: Text(
              'Updated Successfully',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            backgroundColor: Colors.grey[200],
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Ok',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Color(0xFF2196F3)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        })); //print("Updated Successfully"));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        /*leading: IconButton(icon:Image.asset("images/menu2.png"),
            onPressed: () {
          Scaffold.of(context).openDrawer();
            }),*/
        title: Text("Profile",
          style: TextStyle(
              color: Colors.white54,

              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),


      ),
      body:
      SingleChildScrollView(
        child:Column(
          children: [


            SafeArea
              (child: Padding(
              padding: const EdgeInsets.all(20.0),




              child:StreamBuilder(
                stream: FirebaseFirestore.instance.collection("doctor").doc(FirebaseAuth.instance.currentUser!.uid)/*email*/.snapshots(),
                builder: (BuildContext context, AsyncSnapshot snapshot){
                  var data = snapshot.data;
                  if(data==null){
                    return Center(child: CircularProgressIndicator(),);
                  }
                  return setDataToTextField(data);
                },

              ),

            ),
            ),

          ],
        ),
      ),



    );
  }
}
