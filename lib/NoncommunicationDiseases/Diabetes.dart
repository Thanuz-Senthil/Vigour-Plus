import 'package:flutter/material.dart';

class DiabetesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<DiabetesScreen> {
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
        title: Text("Diabetes",
          style: TextStyle(
              color: Colors.white54,

              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),


      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*Container(
              color: Colors.white60,
              child: Text(
                "APPLICATION TERMS AND CONDITIONS",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(05, 20, 0, 0),//EdgeInsets.only(left: 20, right: 50),


            ),
            const SizedBox(
              height: 20,
            ),

            const Divider(
              thickness: 1,
              height: 10,

              color: Colors.black38,

            ),
            const SizedBox(
              height: 20,
            ),*/
            Container(

              child: Text(
                "Diabetes mellitus (DM) is a set of related diseases in which "
                    "the body cannot regulate the amount of sugar in the blood. The boy delivers glucose to provide the body with energy to perform all of a person's daily activities.",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 20,10, 20),//EdgeInsets.only(left: 20, right: 50),


            ),


            Container(



              child: Text(
                "Types",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 10),//EdgeInsets.only(left: 20, right: 50),


            ),

            Container(

              child: Text('\u2022'
                " Type 1 Diabetes(T1D):\n\nThe body stops producing insulin or produces too little insulin to regulate blood glucose level.\n\n\n"
                  '\u2022'  "Type 2 Diabetes(T1D):\n\nThe body is partially or completely unable to use this insulin.",

                  maxLines: 20,

                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


            ),
            Container(
              child: Text(
                "Causes/ Risk Factors",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 10),//EdgeInsets.only(left: 20, right: 50),


            ),

            Container(

              child: Text(
                "\u2022   High bloodPressure.\n"
                    "\u2022   High blood triglyceride (fat) levels.\n"
                    "\u2022   High-fat diet.\n"
                    "\u2022   High alcohol intake.\n"
                    "\u2022   Obesity or overweight\n"
                    "\u2022   Gestinional diabetes.",



                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


            ),
            Container(
              child: Text(
                "Symptoms",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 10),//EdgeInsets.only(left: 20, right: 50),


            ),

            Container(

              child: Text(
                "\u2022   fatigue\n"
                    "\u2022   Unexplained weight loss\n"
                    "\u2022   Excessive thirst\n"
                    "\u2022   Excessive urination\n"
                    "\u2022   Excessive eating\n"
                    "\u2022   Poor wound healing\n"
                    "\u2022   Irritablity\n"
                    "\u2022   Blurry vision\n"
                    "\u2022   Infections",



                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


            ),
            Container(
              child: Text(
                "Treatments",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 10),//EdgeInsets.only(left: 20, right: 50),


            ),

            Container(

              child: Text(
                "The following treatments are given:\n\n"
                    "\u2022   Oral hypoglycemic medications.\n"
                    "\u2022   Subcutaneous injection of insulin for Type 1 DM  and those with uncontrolled blood sugar.",


                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


            ),
            Container(
              child: Text(
                "Prevention",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 10),//EdgeInsets.only(left: 20, right: 50),


            ),

            Container(

              child: Text(
                "\u2022   Maintain a healthy diet.\n"
                    "\u2022   Exercise regularly\n"
                    "\u2022   Drink alcohol in moderation\n",


                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


            ),


          ],
        ),


      ),
    );
    // );
  }
}