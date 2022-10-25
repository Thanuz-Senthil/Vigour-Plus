import 'package:app_ui/Doctor/doctor_home.dart';
import 'package:app_ui/Doctor/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app_ui/components/ru_widget.dart';
import 'package:app_ui/Patient/home_into.dart';
import 'package:app_ui/Patient/patient_signup.dart';
import 'package:app_ui/Patient/patient_forgotpassword.dart';
//import 'package:ug/components/errorDialog.dart';
import 'package:flutter/material.dart';

class Doctorsignin extends StatefulWidget {
  const Doctorsignin({Key? key}) : super(key: key);

  @override
  _DoctorsigninState createState() => _DoctorsigninState();
}

class _DoctorsigninState extends State<Doctorsignin> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  bool _secureText =true;
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                          child: TextFormField(

                            controller: _emailTextController,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Color(0xFF2196F3),
                            decoration: InputDecoration(

                              hintText: "Email",

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
                            obscureText:   _secureText,
                            // maxLength: 8,
                            controller: _passwordTextController,
                            keyboardType: TextInputType.visiblePassword,
                            cursorColor: Color(0xFF2196F3),
                            decoration: InputDecoration(
                              hintText: "Password",


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
                      ],
                    ),
                  ),
                ],
              ),
            ),


            /*Container(
       /* width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              (new Color(0xffF5591F)),
              (new Color(0xffF2861E))
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),*/
       // child: SingleChildScrollView(
          /*child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),*/
         margin: EdgeInsets.only(left: 20, right: 20, top: 50),
         padding: EdgeInsets.only(top:20,),*/
            /*decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(50),
           color: Colors.grey[200],
           boxShadow: [BoxShadow(
               offset: Offset(0, 10),
               blurRadius: 50,
               color: Color(0xffEEEEEE)
           )],
         ),*/
            /* alignment: Alignment.center,
            child: Column(
              children: <Widget>[
               // logoWidget("assets/images/logo.png"),

                reusableTextField("Enter User Name", Icons.person, false,
                    _emailTextController,



                ),
                ],
            ),
       ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(top:20,),
           /* decoration: BoxDecoration(
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
              children: <Widget>[


                reusableTextField("Enter Password", Icons.vpn_key, true,
                    _passwordTextController),
              ],
            ),
          ),*/
            Container(
              child: Column(
                children: [
                  forgetPassword(context),
                  firebaseUIButton(context, "Sign In", () {
                    if(_formKey.currentState!.validate()) {
                      String message;
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                          .then((value) {
                        /* message = 'Your Account login Successfully.';
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(message)));*/
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Doc_HomePage()));
                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()}");

                        _emailTextController.text.isEmpty  && _passwordTextController.text.isEmpty?
                       Doctorsignin()

                            :showDialog(
                            context: context,
                            builder: (c) {
                              return AlertDialog(title: Text( 'Your Login crediantials are incorrect',
                                style: TextStyle(
                                    color: Colors.black,

                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                                backgroundColor: Colors.grey[200],

                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text ('ok', style: TextStyle(
                                      fontSize: 16,
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
                                  )
                                ],

                              );
                            }
                        );

                      });

                      /* Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));*/
                    }
                  }),
                  signUpOption()
                ],
              ),
            ),

          ],
        ),
      ),

    );


  }



  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.only(left: 20,top: 20, right: 20,),),
        const Text("Don't have an account?",
            style: TextStyle(color: Colors.black45)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => doctorsignup()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Color(0xFF2196F3), fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,

      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Color(0xFF2196F3)),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPassword())),
      ),
    );
  }
}