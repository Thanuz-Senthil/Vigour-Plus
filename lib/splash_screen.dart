import 'dart:async';


import 'package:flutter/material.dart';
import 'package:app_ui/intropage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();

  }
  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }

  loginRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => IntroScreen()//LoginScreen()
    ));
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
              color: new Color(0xFF2196F3),//0xffF5591F, 0xFF26A69A ,  0xFF9C27B0
              gradient: LinearGradient(
                colors: [(new Color(0xFF2196F3)), (new Color(0xFF64B5F6))], //0xFF26A69A,0xffF2861E  //(0xFF9C27B0)), (new Color(0xFFBA68C8)
                  // (new Color(0xFF26C6DA)), (new Color(0xFF80DEEA)
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),


          ),
          Center(
            child: Container(
           child: Image.asset("images/icon2.png"),
            height:300,
            width: 300,

            ),
          )
        ],
      ),
    );
  }
}