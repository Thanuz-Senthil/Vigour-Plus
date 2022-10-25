import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<HomeScreen> {
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
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                  gradient: LinearGradient(
                      colors: [(new Color(0xFF9C27B0)), (new Color(0xFFBA68C8))],
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
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        'Vigour Plus',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      /*child: Image.asset("images/Vigour_Plus.png"),
                      height:120,
                      width: 120,*/
                    ),

                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Welcome to Vigour Plus',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
            ),

          ],
        ),
      ),
    );
  }


}