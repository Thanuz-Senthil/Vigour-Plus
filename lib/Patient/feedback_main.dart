import 'package:app_ui/Patient/feedback.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/components/ru_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

/*class FeedbackmainScreen extends StatelessWidget {
  const FeedbackmainScreen({Key? key}) : super(key: key);*/
class FeedbackmainScreen extends StatefulWidget {
  const FeedbackmainScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackmainScreen> createState() => _FeedbackmainScreenState();

/* @override
  _FeedbackmainScreenState createState() => _FeedbackmainScreenState();*/

}

class _FeedbackmainScreenState extends State<FeedbackmainScreen> {
  final TextEditingController _feedbackTextController = TextEditingController();
  TextEditingController _NameTextController = TextEditingController();
  TextEditingController _AgeTextController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  get actions => null;
  late final String uid;

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
        title: Text(
          "Inquiries",
          style: TextStyle(
              color: Colors.white54, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*Container(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: Text("Today, ${DateFormat("Hm").format(DateTime.now())}", /*${DateFormat.EEEE().format(DateTime.now())}*/style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),),
          ),*/
            Container(
              //  padding: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Name:',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              /*decoration: BoxDecoration(
             // borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)
              )],
            ),*/
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  // logoWidget("assets/images/logo.png"),

                  /*reusableTextField("Enter User Name", Icons.person, false,
                  _NameTextController,),*/

                  TextField(
                    controller: _NameTextController,
                    cursorColor: Color(0xFF2196F3),
                    decoration: InputDecoration(
                      hintText: "E.g: Vimal",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Color(0xFF2196F3),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Color(0xFF2196F3),
                        ),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //  padding: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Age:',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),

              alignment: Alignment.center,
              child: Column(
                children: <Widget>[


                  TextField(
                    controller: _AgeTextController,
                    cursorColor: Color(0xFF2196F3),
                    decoration: InputDecoration(

                      hintText: "E.g: 20",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Color(0xFF2196F3),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Color(0xFF2196F3),
                        ),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ],
              ),
            ),


            Container(
              //  padding: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
              child: Text(
                'Inquiries:',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
              // padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: TextFormField(
                      controller: _feedbackTextController,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText: 'E:g: I have a headachae last 2 days.',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color(0xFF2196F3),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color(0xFF2196F3),
                          ),
                        ),
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                      maxLines: 5,
                      maxLength: 4096,
                      textInputAction: TextInputAction.done,
                      validator: (String? text) {
                        if (text == null || text.isEmpty) {
                          return 'Please enter your inquiries';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 60, right: 40),
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        '    Cancel    ',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF2196F3)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: TextButton(
                      child: const Text(
                        '    Send    ',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF2196F3)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          String message;

                          try {
                            User? user = FirebaseAuth.instance.currentUser;
                            final collection = FirebaseFirestore.instance
                                .collection('feedback'); //feedback
                            await collection.doc(user!.uid).set(
                              {
                                'UserID': user.uid,
                                'timestamp': DateTime
                                    .now(), //FieldValue.serverTimestamp(),
                                'Inquiries': _feedbackTextController.text,
                                'Name': _NameTextController.text,
                                'Age': _AgeTextController.text,
                              },
                            );
                            message =
                                'Your Inquiries Send Successfully . Doctor will reply soon.';
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(message)));
                            Navigator.pop(context);
                          } catch (_) {
                            message = 'Error when sending inquiries';
                          }
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /*Widget Details(BuildContext context) {
    return Container(


      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Text(
                  'Your Name:',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Form(

                  child:
                  TextField(
                    obscureText: true,
                    cursorColor: Color(0xFF2196F3),

                  ),

                ),
              ],
            ),
          ),
        ],
      ),

    );
  }*/

}
