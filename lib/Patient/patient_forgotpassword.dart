import 'package:firebase_auth/firebase_auth.dart';
import 'package:app_ui/components/ru_widget.dart';
import 'package:app_ui/components/constant.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
      child: Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              color: Color(0xFF2196F3),//0xFF29B6F6
              gradient: LinearGradient(
                  colors: [(new Color(0xFF2196F3)), (new Color(0xFF64B5F6))], //(0xFF29B6F6)), (new Color(0xFFF8BBD0)
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only( top: 50),

                  child: Image.asset("images/icon2.png"),
                  height:200,
                  width: 200,
                ),


              ],
            ),
          ),
        ),

         Container(
           margin: EdgeInsets.only(left: 20, right: 20, top: 50),
           padding: EdgeInsets.only(left: 20, right: 20),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(50),
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

               /*const SizedBox(
          height: 20,
          ),*/
               reusableTextField("Enter Your Email ", Icons.person, false,
                   _emailTextController),
             ],
           ),
          /*width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                (new Color(0xffF5591F)),
                (new Color(0xffF2861E))
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Your Email ", Icons.person, false,
                        _emailTextController),
                    const SizedBox(
                      height: 20,
                    ),
                    firebaseUIButton(context, "Reset Password", () {
                      FirebaseAuth.instance
                          .sendPasswordResetEmail(email: _emailTextController.text)
                          .then((value) => Navigator.of(context).pop());
                    })
                  ],
                ),
              )
          )*/
         ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            children: [
              firebaseUIButton(context, "Reset Password", () {
                FirebaseAuth.instance
                    .sendPasswordResetEmail(email: _emailTextController.text)
                    .then((value) => Navigator.of(context).pop());
              })
            ],
          ),
        ),

      ],
      ),
      ),
    );
  }
}