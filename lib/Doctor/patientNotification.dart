
import 'package:app_ui/Doctor/PatientData.dart';
import 'package:app_ui/Doctor/patientDetails.dart';
import 'package:firebase_auth/firebase_auth.dart';
import'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class patientNotificationScreen extends StatefulWidget{
  const patientNotificationScreen({Key? key}) : super(key: key);


  @override
_patientNotificationScreenState createState() => _patientNotificationScreenState();
}

class  _patientNotificationScreenState extends State <patientNotificationScreen> {
  var firestoreDB = FirebaseFirestore.instance.collection('feedback').snapshots();
  var patientDB = FirebaseFirestore.instance.collection('patient').snapshots();





  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        /*leading: IconButton(icon:Image.asset("images/menu2.png"),
            onPressed: () {
          Scaffold.of(context).openDrawer();
            }),*/
        title: Text("Patient's Notifications",
          style: TextStyle(
              color: Colors.white54,

              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),


      ),

      body: StreamBuilder(

        stream: firestoreDB,
        builder: (context, snapshot) {
          late String Name;
          late String Age;
          late String Inquiries;
          if(!snapshot.hasData) return CircularProgressIndicator();
          return ListView.separated(//builder(

              itemCount: (snapshot.data! as QuerySnapshot).docs.length,//snapshot.data!.docs.length,
              itemBuilder: (context,int index){
                  final String Name;
                return Card(


                  child: ListTile(

                    onTap: () {

                      Navigator.push(context, MaterialPageRoute(
                              builder:(context) => GetUserName(index.toString())//patientDetailsScreen()
                      ));
                    },
                    visualDensity: VisualDensity(vertical: 4), //<-- SEE HERE
                    leading: CircleAvatar(
                      backgroundColor: const Color (0xFF2196F3),
                      child: Text((snapshot.data! as QuerySnapshot).docs[index]['Name'][0].toUpperCase()//.substring(0)
                      ),
                    ),

                  title: Text((snapshot.data! as QuerySnapshot).docs[index]['Name']),
                  subtitle: Text((snapshot.data! as QuerySnapshot).docs[index]['timestamp'].toDate().toString()),//[DateTime.parse('timestamp')].toDate().toString()),//)]/*.toString()*/),
                    trailing: Icon(Icons.more_vert),

                )
                );

              },separatorBuilder: (context, index) { // <-- SEE HERE
            return Divider();
          }
          );


      },
      ),

    );
  }

  Widget CardUI(doc) {
    return Card(
      margin: EdgeInsets.all(1.5),
      color: Color(0xFF2196F3),
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.all(1.5),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(doc,style: TextStyle(color: Colors.black),),

          ],
        ),

      ),
    );
  }

}