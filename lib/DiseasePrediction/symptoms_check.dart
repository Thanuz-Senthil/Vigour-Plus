import 'package:app_ui/Patient/feedback.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/components/ru_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


/*class FeedbackmainScreen extends StatelessWidget {
  const FeedbackmainScreen({Key? key}) : super(key: key);*/
class SymptomCheckScreen extends StatefulWidget {
  const SymptomCheckScreen ({Key? key}) : super(key: key);

  @override
  State<SymptomCheckScreen > createState() => _SymptomCheckScreenState();

/* @override
  _FeedbackmainScreenState createState() => _FeedbackmainScreenState();*/

}

class _SymptomCheckScreenState extends State<SymptomCheckScreen > {
 // final TextEditingController _feedbackTextController = TextEditingController();
  //TextEditingController _NameTextController = TextEditingController();
 // TextEditingController _AgeTextController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  get actions => null;



  /*@override
  void dispose() {
    _feedbackTextController.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        /*leading: IconButton(icon:Image.asset("images/menu2.png"),
            onPressed: () {
          Scaffold.of(context).openDrawer();
            }),*/
        title: Text("Disease Prediction",
          style: TextStyle(
              color: Colors.white54,

              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),


      ),

      body: SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //  padding: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.fromLTRB(20, 20, 40, 0),
              child:Text('Glucose(mg/dL):',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)
                ,
              ),
            ),

            Container(

              margin: EdgeInsets.only(left: 20, right: 20, top: 10,bottom: 20,),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  // logoWidget("assets/images/logo.png"),

                  /*reusableTextField("Enter User Name", Icons.person, false,
                  _NameTextController,),*/

                  TextField(
                   // controller: _NameTextController,
                    cursorColor: Color(0xFF2196F3),
                    decoration: InputDecoration(
                      /* icon: Icon(
                        Icons.perm_identity_sharp,
                        color: Color(0xFF2196F3),
                      ),*/
                        hintText: "E.g: 148",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //  padding: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child:Text('Blood Plessure (mmHg):',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)
                ,
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10,bottom: 20,),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  TextField(
                  //  controller: _AgeTextController,
                    cursorColor: Color(0xFF2196F3),

                    decoration: InputDecoration(

                      hintText: "E.g: 72",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,

                    ),
                  ),
                ],
              ),
            ),



            Container(
              //  padding: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child:Text('Skin Thickness(mm):',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)
                ,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10,bottom: 20,),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  TextField(
                    //  controller: _AgeTextController,
                    cursorColor: Color(0xFF2196F3),

                    decoration: InputDecoration(

                      hintText: "E.g: 35",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,

                    ),
                  ),
                ],
              ),
            ),
            Container(
              //  padding: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child:Text('Body Mass Index(kg/m^2):',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)
                ,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10,bottom: 20,),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  TextField(
                    //  controller: _AgeTextController,
                    cursorColor: Color(0xFF2196F3),

                    decoration: InputDecoration(

                      hintText: "E.g: 33.6",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,

                    ),
                  ),
                ],
              ),
            ),
            Container(
              //  padding: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child:Text('Age (Years):',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)
                ,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10,bottom: 20,),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(50),
                color: Color(0xA5BDC7FF),//Colors.blueGrey,//grey[200],
                boxShadow: [BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  TextField(
                    //  controller: _AgeTextController,
                    cursorColor: Color(0xFF2196F3),

                    decoration: InputDecoration(

                      hintText: "E.g: 50",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,

                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text ('Cancel'),
              style: TextButton.styleFrom(
                primary:Colors.white, //Colors.pink,
                backgroundColor:Color(0xFF2196F3),
                padding: EdgeInsets.only(left: 20, right: 20),
                // alignment: Alignment(20, 20)

              ),
            ),
            TextButton(
              child: const Text ('Send'),
              style: TextButton.styleFrom(
                primary:Colors.white, //Colors.pink,
                backgroundColor:Color(0xFF2196F3),
                padding: EdgeInsets.only(left: 20, right: 20),
                // alignment: Alignment(20, 20)


              ),
              onPressed: () async {
                if(_formKey.currentState!.validate()) {
                  String message;

                  /*try{
                    final collection = FirebaseFirestore.instance.collection('feedback');
                    await collection.doc().set(
                      {
                        'timestamp':
                        FieldValue.serverTimestamp(),
                        'Inquiries' : _feedbackTextController.text,
                        'Name': _NameTextController.text,
                        'Age' : _AgeTextController.text,


                      },
                    );
                    message = 'Your Inquiries Send Successfully . Doctor will reply soon.';
                  } catch(_) {
                    message = 'Error when sending inquiries';
                  }*/

                  /*ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(message)));
                  Navigator.pop(context);*/
                }
              },
            ),

          ],

        ),
      ),
    );

  }



}