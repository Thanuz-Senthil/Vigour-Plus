import 'package:flutter/material.dart';

class CovidScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<CovidScreen> {
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
        title: Text("Covid19",
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

            Container(

              child: Text(
                "Coronavirus disease (COVID-19) is an infectious disease caused by the SARS-CoV-2 virus.\n"

        "Most people infected with the virus will experience mild to moderate respiratory illness and recover without "
        "requiring special treatment. However, some will become seriously ill and require medical attention. "
        "Older people and those with underlying medical conditions like cardiovascular disease, diabetes, chronic respiratory disease,"
            "or cancer are more likely to develop serious illness. Anyone can get sick with COVID-19 and become"
                    " seriously ill or die at any age. ",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 20,10, 20),//EdgeInsets.only(left: 20, right: 50),


            ),


            Container(



              child: Text(
                "Most common symptoms:",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 10),//EdgeInsets.only(left: 20, right: 50),


            ),

            Container(

              child: Text('\u2022'
              " fever\n"
                  '\u2022'" cough\n"
                  '\u2022'" tiredness\n"
                  '\u2022'" loss of taste or smell",


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
                "Less common symptoms:",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 10),//EdgeInsets.only(left: 20, right: 50),


            ),

            Container(

              child: Text(







              "\u2022   sore throat\n"
                    "\u2022   headache\n"
                    "\u2022   aches and pains\n"
                    "\u2022   diarrhoea\n"
                    "\u2022   a rash on skin, or discolouration of fingers or toes\n"
                    "\u2022   red or irritated eyes",



                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


            ),
            Container(
              child: Text(
                "Serious symptoms:",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),

              ),
              padding:  const EdgeInsets.fromLTRB(10, 10,10, 10),//EdgeInsets.only(left: 20, right: 50),


            ),

            Container(

              child: Text(

                "\u2022   difficulty breathing or shortness of breath\n"
                    "\u2022   loss of speech or mobility, or confusion\n"
                    "\u2022   chest pain\n\n"
                    "Seek immediate medical attention if you have serious symptoms.  "
                    "Always call before visiting your doctor or health facility. \n\n"
                    "People with mild symptoms who are otherwise healthy should manage their symptoms at home. \n\n"
                    "On average it takes 5–6 days from when someone is infected with the virus for symptoms to show, however it can take up to 14 days.",



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
                "To prevent infection and to slow transmission of COVID-19, do the following: \n\n"

                    "\u2022    Get vaccinated when a vaccine is available to you.\n\n"
                "\u2022   Stay at least 1 metre apart from others, even if they don’t appear to be sick.\n\n"
              "\u2022   Wear a properly fitted mask when physical distancing is not possible or when in poorly ventilated settings.\n\n"
              "\u2022   Choose open, well-ventilated spaces over closed ones. Open a window if indoors.\n\n"
                "\u2022   Cover your mouth and nose when coughing or sneezing.\n\n"
                "\u2022   If you feel unwell, stay home and self-isolate until you recover.\n\n"
                    "\u2022   Wash your hands regularly with soap and water or clean them with alcohol-based hand rub.",


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