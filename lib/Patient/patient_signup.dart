import 'package:app_ui/Patient/patient_login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:app_ui/components/ru_widget.dart';
import 'package:app_ui/Patient/home_into.dart';
import 'package:app_ui/components/constant.dart';
import 'package:flutter/material.dart';

import '../components/ru_widget.dart';

class Patientsignup extends StatefulWidget {
  const Patientsignup({Key? key}) : super(key: key);

  @override
  _PatientsignupState createState() => _PatientsignupState();
}

class _PatientsignupState extends State<Patientsignup> {
  TextEditingController userNameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController _phoneTextController=TextEditingController();
  TextEditingController _addressTextController=TextEditingController();
  TextEditingController _nicTextController=TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController confirmPasswordTextController = TextEditingController();
  final TextEditingController _feedbackTextController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  //get async => null;
  get actions => null;
  bool _secureText =true;



  @override
  Widget build(BuildContext context) {
    var message;
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

         /* Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
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

                  Form(
                    key: _formKey,

              child:TextFormField(

                      controller: userNameTextController,
                      keyboardType: TextInputType.multiline,
                      cursorColor: Color(0xFF2196F3),
                      decoration: InputDecoration(

                          icon: Icon(
                            Icons.person,
                            color: Color(0xFF2196F3),

                          ),
                          hintText: "Full Name",

                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none
                      ),
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
                  ),
                   ],

                  ),
                  ),*/

          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10,bottom: 10),
            padding: EdgeInsets.only(top:20,bottom: 10),
          /*  decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)
              )],
            ),*/
            alignment: Alignment.center,

            child: Column(
              children: [

                Form(

                  key: _formKey,
                  child: Column(

                    children: [
                  Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child:TextFormField(

                    controller: userNameTextController,
                    keyboardType: TextInputType.multiline,
                    cursorColor: Color(0xFF2196F3),
                    decoration: InputDecoration(

                        hintText: "Full Name",
                     // labelText: "Full Name",
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
                    ),
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
                  ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: TextFormField(

                        controller: emailTextController,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Color(0xFF2196F3),
                        decoration: InputDecoration(

                            hintText: "Email",
                      //    labelText: "Email",
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
                            Icons.email,
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
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: TextFormField(

                        controller: _phoneTextController,
                        keyboardType: TextInputType.number,
                        cursorColor: Color(0xFF2196F3),

                        decoration: InputDecoration(


                          hintText: "Phone Number",

                          //         labelText: "Phone Number",
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
                          if (text == null || text.isEmpty||text.length <10) {
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
              child: TextFormField(

                        controller: _addressTextController,
                        keyboardType: TextInputType.multiline,
                        cursorColor: Color(0xFF2196F3),
                        decoration: InputDecoration(

                            hintText: "Address",

                          //    labelText: "Address",

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
                            return 'Please enter your address';
                          }
                          return null;
                        },
                      ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: TextFormField(

                        controller: _nicTextController,
                        keyboardType: TextInputType.multiline,
                        cursorColor: Color(0xFF2196F3),
                        decoration: InputDecoration(

                            hintText: "NIC Number",

                          //      labelText: "NIC Number",
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
                          if (text == null || text.isEmpty|| text.length <= 9) {
                            return 'Please enter your NIC number';
                          }
                          return null;
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
                          //    labelText: "Password",

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
                        // maxLength: 8,
                        controller: confirmPasswordTextController,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: Color(0xFF2196F3),
                        decoration: InputDecoration(
                         hintText: "Confirm Password",
                        //  labelText: "Confirm Password",

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
                          if (text == null || text.isEmpty || text.length < 8 /*|| passwordTextController != confirmPasswordTextController*/) {
                            return 'Please enter your confirm password in correct format';
                          }

                          else {
                            return null;
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






          TextButton(
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
    FirebaseAuth.instance.createUserWithEmailAndPassword(
             email: emailTextController.text,
           password: passwordTextController.text)
        .then((value) async {
          User? user = FirebaseAuth.instance.currentUser;
      final collection = FirebaseFirestore.instance.collection('patient');
      await collection.doc(user!.uid).set(
        {
          'uid':user.uid,
          'timestamp':
          FieldValue.serverTimestamp(),
          'Full Name': userNameTextController.text,
          'Email': emailTextController.text,
          'Phone Number': _phoneTextController.text,
          'Address': _addressTextController.text,
          'NIC': _nicTextController.text,
          'Password': passwordTextController.text,
          'Confirm Password': confirmPasswordTextController.text,


        },
      );
    },
    );

      message = 'Your Account Registered Successfully.';
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomePage()));
      // Navigator.pop(context);

                } catch(_) {
                  message = 'Error on Registration';
                }


              }
            },
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