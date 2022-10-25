import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<AboutScreen> {
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
        title: Text("About",
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
          ),
          Container(

            child: Text(
              "By downloading or using the app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re not allowed to copy or modify the app, any part of the app, or our trademarks in any way. You’re not allowed to attempt to extract the source code of the app, and you also shouldn’t try to translate the app into other languages or make derivative versions. The app itself, and all the trademarks, copyright, database rights, and other intellectual property rights related to it, still belong to Thanuz."
               " Thanuz is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for."
            "The Vigour Plus app stores and processes personal data that you have provided to us, to provide my Service. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the Vigour Plus app won’t work properly or at all."
            "The app does use third-party services that declare their Terms and Conditions."
            "Link to Terms and Conditions of third-party service providers used by the app",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),

            ),
            padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


          ),


          Container(


            /*child: Text(
              "User Registration",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                  fontWeight: FontWeight.w400

              ),

            ),*/
            child: Text(
              "User Registration",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),

            ),
            padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


          ),

          Container(

            child: Text(
                "You may be required to register , create an User Account  and would require to validate the NIC number or SLMC number or Numbers in order to use the App"
          "You agree to keep your password confidential and will be fully responsible for all use of your Account and password . All transactions and acts done through your Account shall be considered as done by you ."
           "Vigour Plus reserves the right to remove , reclaim , or change a username you select if Vigour Plus determines , in its sole discretion , that such username is inappropriate , obscene , or otherwise objectionable .",

          style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),

            ),
            padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


          ),
          Container(
          child: Text(
            "App and Related Terms ",
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 20,
                fontWeight: FontWeight.w500),

          ),
          padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


        ),

      Container(

        child: Text(
           "Depending on the version of the Application you have downloaded , these App Terms incorporate Apple's or Google Android's terms and conditions and privacy policies . "
               "If there is any conflict between these App Terms and the Platform Terms then these App Terms will prevail "
        "We may from time to time vary these App Terms . "
               "Please check these App Terms regularly to ensure you are aware of any variations made by us . "
               "If you continue to use this App , you are deemed to have accepted such variations . If you do not agree to such variations , you should not use the App .",


      style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.w500),

        ),
        padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


      ),
          Container(
            child: Text(
              "No Promises",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),

            ),
            padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


          ),

          Container(

            child: Text(
              "Vigour Plus provides the App on an ' as is ' and ' as available ' basis without any promises or representations ,"
                  " express or implied . To the fullest extent permitted by applicable law , Vigour Plus hereby excludes all promises , "
                  "whether express or implied , including any promises that the App is fit for purpose , of satisfactory quality , "
                  "non - infringing , is free of defects , is able to operate on an uninterrupted basis , that the use of the App by you is in compliance with laws or "
                  "that any information that you transmit in connection with this App will be successfully , accurately or securely transmitted . ",


              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),

            ),
            padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


          ),
          Container(
            child: Text(
              "Reliance on Information ",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),

            ),
            padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


          ),

          Container(

            child: Text(
              "The App is intended to provide general information only and , as such , should not be considered as a substitute for any valid documents of Vigour Plus.",


              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),

            ),
            padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


          ),
          Container(
            child: Text(
              "Changes to This Terms and Conditions",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),

            ),
            padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


          ),

          Container(

            child: Text(
              "Vigour Plus may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes."
                  " Vigour Plus will notify you of any changes by posting the new Terms and Conditions on this page."
                "These terms and conditions are effective as of 2022-08-24 ",


              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),

            ),
            padding:  const EdgeInsets.fromLTRB(10, 10,10, 20),//EdgeInsets.only(left: 20, right: 50),


          ),
          Container(
            child: Text(
              "Contact Us",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),

            ),
            padding:  const EdgeInsets.fromLTRB(10, 0,10, 20),//EdgeInsets.only(left: 20, right: 50),


          ),

          Container(

            child: Text(
              "If you have any questions or suggestions about my Terms and Conditions, do not hesitate to contact me at Thanuzsenthil09@gmail.com.",


              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),

            ),
            padding:  const EdgeInsets.fromLTRB(10, 0,10, 20),//EdgeInsets.only(left: 20, right: 50),


          ),




        ],
        ),


        ),
    );
   // );
  }
}