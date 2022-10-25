import 'package:app_ui/CommunicationDiseases/Covid19.dart';
import 'package:app_ui/NoncommunicationDiseases/Diabetes.dart';
import 'package:flutter/material.dart';

class commScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();

}
class InitState extends State<commScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();

  }

  Widget initWidget() {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        /*leading: IconButton(icon:Image.asset("images/menu2.png"),
            onPressed: () {
          Scaffold.of(context).openDrawer();
            }),*/
        title: Text("Communication Diseases",
          style: TextStyle(
              color: Colors.white54,

              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),


      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(10.0,),
        child: GridView.count(
          crossAxisCount: 2,

          children: <Widget>[
            Card(
              margin: EdgeInsets.all(20.0),
              color: Color(0xFF2196F3),//0xFF29B6F6


              child: InkWell(
                onTap: () {
                  Navigator./*pop(context)*/push(context, MaterialPageRoute(
                      builder: (context) => CovidScreen()//Doc_HomePage()
                  ));
                },

                splashColor: Color(0xFF64B5F6),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                      Image.asset("images/covid1.png",
                        height: 100,
                        width: 100,

                      ),


                      /*Icon(Icons.home,
                   size: 70.0,
                   ),*/
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 05, 20, 0),
                      ),
                      Text(
                        "Covid19",
                        style:  TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20.0),
              color: Color(0xFF2196F3),//0xFF29B6F6


              child: InkWell(

                  onTap: () {
                    Navigator./*pop(context)*/push(context, MaterialPageRoute(
                        builder: (context) => DiabetesScreen()//Doc_HomePage()
                    ));

                },

                splashColor: Color(0xFF64B5F6),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                      Image.asset("images/monkeypox1.png",
                        height: 100,
                        width: 100,

                      ),


                      /*Icon(Icons.home,
                   size: 70.0,
                   ),*/
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 05, 20, 0),
                      ),
                      Text(
                        "Monkey pox",
                        style:  TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.all(20.0),
              color: Color(0xFF2196F3),//0xFF29B6F6


              child: InkWell(
                onTap: () {},

                splashColor: Color(0xFF64B5F6),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                      Image.asset("images/hepatitis1.png",
                        height: 100,
                        width: 100,

                      ),


                      /*Icon(Icons.home,
                   size: 70.0,
                   ),*/
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 05, 20, 0),
                      ),
                      Text(
                        "Hepatitis",
                        style:  TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.all(20.0),
              color: Color(0xFF2196F3),//0xFF29B6F6


              child: InkWell(
                onTap: () {},

                splashColor: Color(0xFF64B5F6),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 05, 20, 0),
                      ),
                      Image.asset("images/TB1.png",
                        height: 100,
                        width: 100,

                      ),


                      /*Icon(Icons.home,
                   size: 70.0,
                   ),*/
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      ),
                      Text(
                        "TB",
                        style:  TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Card(
              margin: EdgeInsets.all(20.0),
              color: Color(0xFF2196F3),//0xFF29B6F6


              child: InkWell(
                onTap: () {},

                splashColor: Color(0xFF64B5F6),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                      Image.asset("images/chickenpox1.png",
                        height: 100,
                        width: 100,

                      ),


                      /*Icon(Icons.home,
                   size: 70.0,
                   ),*/
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                      Text(
                        "Chickenpox",
                        style:  TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Card(
              margin: EdgeInsets.all(20.0),
              color: Color(0xFF2196F3),//0xFF29B6F6


              child: InkWell(
                onTap: () {},

                splashColor: Color(0xFF64B5F6),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                      Image.asset("images/HIV1.png",
                        height: 100,
                        width: 100,
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                      Text(
                        "HIV",
                        style:  TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20.0),
              color: Color(0xFF2196F3),//0xFF29B6F6


              child: InkWell(
                onTap: () {},

                splashColor: Color(0xFF64B5F6),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                      Image.asset("images/diaheria1.png",
                        height: 100,
                        width: 100,
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                      Text(
                        "Diaheria",
                        style:  TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20.0),
              color: Color(0xFF2196F3),//0xFF29B6F6


              child: InkWell(
                onTap: () {},

                splashColor: Color(0xFF64B5F6),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                      Image.asset("images/influzena1.png",
                        height: 100,
                        width: 100,
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                      Text(
                        "Influenza",
                        style:  TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),

      ),
    );
  }

}