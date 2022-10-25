import 'dart:async';

import 'package:app_ui/Doctor/login.dart';

import 'package:app_ui/Patient/patient_login.dart';
import 'package:app_ui/Web_view/home_page.dart';
import 'package:app_ui/Web_view/main.dart';
import 'package:flutter/material.dart';


class IntroScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<IntroScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xFF2196F3),
                //0xffF5591F, 0xFF26A69A ,  0xFF9C27B0
                gradient: LinearGradient(
                    colors: [(new Color(0xFF2196F3)), (new Color(0xFF64B5F6))],
                    //0xFF26A69A,0xffF2861E  //(0xFF9C27B0)), (new Color(0xFFBA68C8)
                    // (new Color(0xFF26C6DA)), (new Color(0xFF80DEEA)
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),

            /*child: Image.asset("images/Vigour_Plus.png"),
          height:200,
          width:200,*/
          ),
          //
          GestureDetector(
            onTap: () => {
              /*onclick code*/

              Navigator. /*pop(context)*/ push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Patientsignin() //HomePage()//Doc_HomePage() //LoginScreen() //LoginScreen()/
                      ))
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 350),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(new Color(0xFFE1F5FE)), (new Color(0xFFE1F5FE))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              child: Text(
                "Patient",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {
              /*onclick code*/

              Navigator. /*pop(context)*/ push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Doctorsignin() //Doc_LoginScreen()//HomePage()//Doc_HomePage()
                      ))
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 450),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(new Color(0xFFE1F5FE)), (new Color(0xFFE1F5FE))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              child: Text(
                "Doctor",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        /*  GestureDetector(
            onTap: () => {
              /*onclick code*/

              Navigator. /*pop(context)*/ push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage() //Doc_LoginScreen()//HomePage()//Doc_HomePage()
                  ))
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 450),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(new Color(0xFFE1F5FE)), (new Color(0xFFE1F5FE))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              child: Text(
                "Predict",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                ),
              ),
            ),
          )*/
        ],
      ),
    );
  }
}
