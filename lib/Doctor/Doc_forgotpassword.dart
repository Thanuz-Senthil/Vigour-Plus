import 'package:app_ui/splash_screen.dart';
import 'package:flutter/material.dart';
//import 'package:app_ui/Patient/signup_screen.dart';
import 'package:app_ui/home_screen.dart';



class Doc_ForgotpasswordScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<Doc_ForgotpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();

  }

  Widget initWidget() {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                  color: Color(0xFF2196F3),
                  gradient: LinearGradient(
                      colors: [(new Color(0xFF2196F3)), (new Color(0xFF64B5F6))],
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
                    /*child: Text(
                        'Vigour Plus',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      /*child: Image.asset("images/Vigour_Plus.png"),
                      height:200,
                      width: 200,*/
                    ),*/
                    /* Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Forgot password",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    )*/
                  ],
                ),
              ),
            ),
            // ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/docicon2.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 100),
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
              child: TextField(
                cursorColor: Color(0xFF2196F3),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.mail,
                      color: Color(0xFF2196F3),
                    ),
                    hintText: "Enter Email Address",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                ),
              ),
            ),


            GestureDetector(
              onTap: () => {
                /*onclick code*/

                Navigator./*pop(context)*/push(context, MaterialPageRoute(
                    builder: (context) => HomeScreen()
                ))
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [(new Color(0xFF2196F3)), (new Color(0xFF64B5F6))],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  )],
                ),
                child: Text(
                  "RESET PASSWORD",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            /*Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text(
                    "\n Back"
                ),
                onTap: () => {

                },
              ),
            ),*/
          ],
        ),
      ),
    );
  }

}