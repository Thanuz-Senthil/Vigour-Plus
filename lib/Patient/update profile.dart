/*import 'package:app_ui/Doctor/doctor_home.dart';
import 'package:app_ui/Doctor/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:app_ui/components/ru_widget.dart';
import 'package:app_ui/components/constant.dart';
import 'package:flutter/material.dart';


class doctorsignup extends StatefulWidget {
  const doctorsignup({Key? key}) : super(key: key);

  @override
  _doctorsignupState createState() => _doctorsignupState();
}

class _doctorsignupState extends State<doctorsignup> {
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _phoneTextController=TextEditingController();
  TextEditingController _worklocationTextController=TextEditingController();
  TextEditingController _slmcnumberTextController=TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _confirmPasswordTextController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
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
              /*width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:BoxDecoration (
            gradient: LinearGradient(
                colors: [(new Color(0xffF5591F)), (new Color(0xffF2861E))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
          ),*/
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
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
                  reusableTextField("Full Name", Icons.person, false,
                      _userNameTextController),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                children: [
                  reusableTextField("Email", Icons.email, false,
                      _emailTextController),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                children: [
                  reusableTextField("Phone Number", Icons.phone, false,
                      _phoneTextController),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                children: [
                  reusableTextField("Work Location", Icons.location_on, false,
                      _worklocationTextController),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                children: [
                  reusableTextField("SLMC Number", Icons.perm_identity, false,
                      _slmcnumberTextController),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                children: [
                  reusableTextField("Enter Password", Icons.vpn_key, true,
                      _passwordTextController),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                children: [
                  reusableTextField("Confirm Password", Icons.vpn_key, true,
                      _confirmPasswordTextController),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  firebaseUIButton(context, "Sign Up", () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                        .then((value) {
                      print("Created New Account");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Doc_HomePage()
                          ));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  })
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Already have an account?"
                  ),

                  GestureDetector(
                    onTap: () => {

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Doctorsignin ()
                          ))

                    },

                    child: Text(
                      "Login Now",
                      style: TextStyle(
                        color: Color(0xFF2196F3),
                      ),
                    ),
                  ),
                ],
              ),
            )


          ],
        ),
      ),

    );
  }
}*/
import 'dart:ffi';

import 'package:app_ui/Doctor/doctor_home.dart';
import 'package:app_ui/Patient/patient_login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:app_ui/components/ru_widget.dart';
import 'package:app_ui/Patient/home_into.dart';
import 'package:app_ui/components/constant.dart';
import 'package:flutter/material.dart';

import '../components/ru_widget.dart';

class patientProfile extends StatefulWidget {
  const patientProfile({Key? key}) : super(key: key);

  @override
  _patientProfileState createState() => _patientProfileState();
}

class _patientProfileState extends State<patientProfile> {
  TextEditingController firstNameTextController = TextEditingController();
  TextEditingController lastnameTextController = TextEditingController();
  TextEditingController ageTextController=TextEditingController();
  TextEditingController heightTextController=TextEditingController();
  TextEditingController weightTextController=TextEditingController();
  TextEditingController BMITextController = TextEditingController();
  TextEditingController bloodgroupTextController = TextEditingController();

  bool _secureText = true;
  late String _passwordError;
  late String _slmcError;
  late String _phonenumberError;

  final GlobalKey<FormState> _formKey = GlobalKey();

  //get async => null;
  get actions => null;



  @override
  Widget build(BuildContext context) {
    var message;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        /*leading: IconButton(icon:Image.asset("images/menu2.png"),
            onPressed: () {
          Scaffold.of(context).openDrawer();
            }),*/
        title: Text(
          "Set Profile",
          style: TextStyle(
              color: Colors.white54, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10,bottom: 10),
              padding: EdgeInsets.only(top:20,bottom: 10),

              alignment: Alignment.center,

              child: Column(
                children: [

                  Form(

                    key: _formKey,
                    child: Column(

                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          //padding: const EdgeInsets.all(8.0),
                          child:Row(
                          children:[
                          TextFormField(

                            controller: firstNameTextController,
                            keyboardType: TextInputType.multiline,
                            cursorColor: Color(0xFF2196F3),
                            /*decoration: InputDecoration(
                              hintText: "Full Name",
                              //  labelText: "Full Name",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color:Color(0xFF2196F3),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color(0xFF2196F3),

                              ),
                              fillColor: Colors.grey[200],
                              filled: true,
                            ),*/

                            // maxLines: 5,
                            // maxLength: 4096,
                            textInputAction: TextInputAction.done,
                            validator: (String? text) {
                              if (text == null || text.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),


                           TextFormField(

                            controller: lastnameTextController,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Color(0xFF2196F3),
                            decoration: InputDecoration(

                              hintText: "Email",
                              //   labelText: "Email",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              prefixIcon:Icon(
                                Icons.email,
                                color: Color(0xFF2196F3),

                              ),
                              fillColor: Colors.grey[200],
                              filled: true,
                            ),

                            textInputAction: TextInputAction.done,
                            validator: (String? text) {
                              if (text == null || text.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                          ],
                        )),
                       ],
    ),
    )

                       /* Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child:TextFormField(
                            // maxLength: 10,
                            controller: _phoneTextController,
                            keyboardType: TextInputType.number,
                            cursorColor: Color(0xFF2196F3),

                            decoration: InputDecoration(


                              hintText: "Phone Number",

                              //    labelText: "Phone Number",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Color(0xFF2196F3),

                              ),
                              fillColor: Colors.grey[200],
                              filled: true,
                            ),
                            // maxLines: 5,
                            // maxLength: 4096,
                            textInputAction: TextInputAction.done,
                            validator: (String? text) {
                              if (text == null || text.isEmpty || text.length <10) {
                                return 'Please enter your phone number in correct format';
                              }
                              /*if(passwordTextController.){
                              _phonenumberError = "Enter at least 8 characters";
                            }*/
                              else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child:TextFormField(

                            controller: _worklocationTextController,
                            keyboardType: TextInputType.multiline,
                            cursorColor: Color(0xFF2196F3),
                            decoration: InputDecoration(

                              hintText: "Work Location",

                              //     labelText: "Work Location",

                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              prefixIcon:Icon(
                                Icons.location_on,
                                color: Color(0xFF2196F3),

                              ),
                              fillColor: Colors.grey[200],
                              filled: true,
                            ),
                            // maxLines: 5,
                            // maxLength: 4096,
                            textInputAction: TextInputAction.done,
                            validator: (String? text) {
                              if (text == null || text.isEmpty) {
                                return 'Please enter your Work Location';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextFormField(

                            controller: _slmcnumberTextController,
                            keyboardType: TextInputType.number,
                            cursorColor: Color(0xFF2196F3),
                            decoration: InputDecoration(


                              hintText: "SLMC Number",

                              //    labelText: "SLMC Number",
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              prefixIcon:Icon(
                                Icons.perm_identity,
                                color: Color(0xFF2196F3),

                              ),
                              fillColor: Colors.grey[200],
                              filled: true,
                            ),
                            // maxLines: 5,
                            // maxLength: 4096,
                            textInputAction: TextInputAction.done,
                            validator: (String? text) {
                              if (text == null || text.isEmpty ||text.length <5) {
                                return 'Please enter your SLMC number';
                              }
                              /* if(passwordTextController.){
                              _slmcError = "Enter at least 8 characters";
                            }*/
                              else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextFormField(
                            obscureText:   _secureText,
                            // maxLength: 8,
                            controller: passwordTextController,
                            keyboardType: TextInputType.visiblePassword,
                            cursorColor: Color(0xFF2196F3),
                            decoration: InputDecoration(
                              hintText: "Password",
                              //      labelText: "Password",

                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              prefixIcon:IconButton(
                                icon:Icon(

                                  _secureText ? Icons.remove_red_eye :Icons.vpn_key,
                                  color: Color(0xFF2196F3),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _secureText = !_secureText;
                                  });
                                },
                              ),


                              fillColor: Colors.grey[200],
                              filled: true,
                            ),
                            // maxLines: 5,
                            // maxLength: 4096,
                            textInputAction: TextInputAction.done,
                            validator: (String? text) {
                              if (text == null || text.isEmpty || text.length < 8 ) {
                                return 'Please enter your password in correct format';
                              }

                              else {
                                return null;
                              }

                            },


                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextFormField(
                            obscureText:   _secureText,
                            //maxLength: 8,
                            controller: confirmPasswordTextController,
                            keyboardType: TextInputType.visiblePassword,
                            cursorColor: Color(0xFF2196F3),
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,

                              hintText: "Confirm Password",

                              //   labelText: "Confirm Password",

                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Color(0xFF2196F3),
                                ),
                              ),
                              prefixIcon:IconButton(
                                icon:Icon(

                                  _secureText ? Icons.remove_red_eye :Icons.vpn_key,
                                  color: Color(0xFF2196F3),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _secureText = !_secureText;
                                  });
                                },
                              ),

                            ),
                            // maxLines: 5,
                            // maxLength: 4096,
                            textInputAction: TextInputAction.done,
                            validator: (String? text) {
                              if (text == null || text.isEmpty ||text.length <8 /*|| passwordTextController != confirmPasswordTextController*/) {
                                return 'Please enter your confirm password in correct format';
                              }
                              return null;

                              if (passwordTextController !=
                                  confirmPasswordTextController) {
                                return 'Password not matched!';
                              }




                            },
                          ),
                        ),

                      ],
                    ),
                  ),*/
                ],

              ),
            ),


            Container(
              //margin: EdgeInsets.only(left: 20, right: 20, top: 10,bottom: 10),
              //padding: EdgeInsets.only(bottom: 10),

              alignment: Alignment.center,

              child: Column(
                children: [

                  Padding(
                    padding: EdgeInsets.only(left: 0, right: 0, ),

                    child:TextButton(
                      child: Text ('                Sign Up                ',
                        style: TextStyle(
                          fontSize: 18,
                        ),),

                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor:MaterialStateProperty.all(Color(0xFF2196F3)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(
                              color: Colors.white,
                            ),
                          ),

                        ),


                      ),
                      onPressed: () async {
                        String? str;
                        if(_formKey.currentState!.validate()) {
                          String message;

                          try{
                            final collection = FirebaseFirestore.instance.collection('doctor');
                            await collection.doc().set(
                              {
                                /*'timestamp':
                                FieldValue.serverTimestamp(),
                                'Full Name' : _userNameTextController.text,
                                'Email': emailTextController.text,
                                'Phone Number' : _phoneTextController.text,
                                'Work Location' : _worklocationTextController.text,
                                'SLMC Number' :  _slmcnumberTextController.text,
                                'Password' : passwordTextController.text,
                                'Confirm Password' : confirmPasswordTextController.text,*/


                              },
                            );
                            message = 'Your Account Registered Successfully.';
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(message)));
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Doc_HomePage()));
                          } catch(_) {
                            message = 'Error on Registration';
                          }


                          // Navigator.pop(context);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),

            /* FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                    email: _emailTextController.text,
                    password: _passwordTextController.text)
                    .then((value) {
                  print("Created New Account");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }).onError((error, stackTrace) {
                  print("Error ${error.toString()}");
                }))
            ]
          ),
        ),*/
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Already have an account?"
                  ),

                  GestureDetector(
                    onTap: () => {
                      /*Navigator.pop(context)
                    push(context, MaterialPageRoute(
                          builder: (context) => SignUpScreen()
                      ))*/
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Patientsignin ()
                          ))

                    },

                    child: Text(
                      "Login Now",
                      style: TextStyle(
                        color: Color(0xFF2196F3),
                      ),
                    ),
                  ),
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}