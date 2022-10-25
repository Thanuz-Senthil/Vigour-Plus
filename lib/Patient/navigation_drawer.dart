import 'package:app_ui/Chatbot/Chat.dart';

import 'package:app_ui/Patient/feedback_main.dart';
import 'package:app_ui/Patient/patient_login.dart';
import 'package:app_ui/Patient/search_doctor.dart';
import 'package:app_ui/Patient/setup_profile.dart';
import 'package:app_ui/Web_view/home_page.dart';
import 'package:app_ui/drawer_item.dart';
import 'package:app_ui/DiseasePrediction/symptoms_check.dart';
import 'package:app_ui/upload.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app_ui/about.dart';
import 'package:app_ui/Patient/search_doctor.dart';
/*Map<String, WidgetBuilder> routes = {

  "'/searchdoctor'": (context) => SearchDoctor()
};*/

class NavigationDrawer extends StatelessWidget {
  /* const*/ NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white54, //Color(0xFF2196F3),//0xFF29B6F6,
        // child:Padding(
        //   padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
        child: Column(
          children: [
            headerWidget(),
            /*const SizedBox(
                  height: 40,
                ),
                const Divider(
                  thickness: 1,
                  height: 10,
                  color: Colors.blueGrey,
                ),*/

            const SizedBox(
              height: 20,
            ),
            /*const SizedBox(
                  height: 30,
                ),*/
            DrawerItem(
              name: 'Symptom checker',
              icon: Icons.check_box,
              onPressed: () => onItemPressed(context, index: 0),
            ),
            const SizedBox(
              height: 15,
            ),
            DrawerItem(
              name: 'Search doctor',
              icon: Icons.person_search,
              onPressed: () => onItemPressed(context, index: 1),
            ),
            const SizedBox(
              height: 15,
            ),
            DrawerItem(
              name: 'Appointment',
              icon: Icons.calendar_month,
              onPressed: () => onItemPressed(context, index: 2),
            ),
            const SizedBox(
              height: 15,
            ),
            DrawerItem(
              name: 'Inquiries',
              icon: Icons.feedback,
              onPressed: () => onItemPressed(context, index: 3),
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

            /*const SizedBox(
                  height: 30,
                ),*/
            DrawerItem(
              name: 'Chat with shaasha',
              icon: Icons.chat_outlined,
              onPressed: () => onItemPressed(context, index: 4),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
              height: 10,
              color: Colors.black38, //blueGrey,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            DrawerItem(
              name: 'Profile',
              icon: Icons.person,
              onPressed: () => onItemPressed(context, index: 5),
            ),
            const SizedBox(
              height: 15,
            ),
            DrawerItem(
              name: 'About',
              icon: Icons.app_blocking_outlined,
              onPressed: () => onItemPressed(context, index: 6),
            ),
            const SizedBox(
              height: 15,
            ),
            DrawerItem(
              name: 'Log out',
              icon: Icons.logout,
              onPressed: () => onItemPressed(context, index: 7),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),

        //),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:
                    (context) =>  HomePage()));
        break;

      case 1:
        showSearch(context: context, delegate: SearchDoctor());
        break;
      case 2:

        // Navigator.pushNamed(context, '/searchdoctor'/*"C:/Users/Thanuz/Desktop/app_ui/lib/Patient/search_doctor"*/, arguments: "1");
        //Navigator.pushNamed(context, "./SearchDoctor");
        /*Navigator.of(context).popAndPushNamed(
            '/SearchDoctor'
        );*/

        Navigator.push(
            context,
            MaterialPageRoute(
                builder:
                    (context) => /*const SymptomCheck()*/ const FeedbackmainScreen() //SearchDoctor()
                ));
        break;
      case 3:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:
                    (context) => /*const SymptomCheck()*/ const FeedbackmainScreen()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Chat()));
        break;
      case 5:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Profile() // MyHomePage()//SearchDoctor() /* Chat()*/
                ));
        break;
      case 6:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => /*const SymptomCheck()*/ AboutScreen()));
        break;
      case 7:
        FirebaseAuth.instance.signOut().then((value) {
          print("Signed Out");
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Patientsignin()));
        });
        break;

      /*default:
        Navigator.pop(context);
        break;*/
    }
  }

  final currentUser = FirebaseAuth.instance;
  /*var firestoreDB = FirebaseFirestore.instance.collection('patient')
      .where("uid", isEqualTo: currentUser.currentUser!.uid )
      .snapshots();*/
  late String myEmail;
  late String myName;

  Widget headerWidget() {
    return Column(
      //Row(
      children: [
        Container(
          height: 250,
          width: 304,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              color: Color(0xFF2196F3), //0xFF29B6F6
              gradient: LinearGradient(
                  colors: [
                    (new Color(0xFF2196F3)),
                    (new Color(0xFF64B5F6))
                  ], //(0xFF29B6F6)), (new Color(0xFFF8BBD0)
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //margin: EdgeInsets.only( top: 50),
                  child: Image.asset("images/profile icon2.png"),
                  height: 60,
                  width: 60,
                ),
                /*FutureBuilder(
        future: _fetch(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done)
            return Text("Loading data...Please wait");
          return Text("Name:$myName");
          return Text("Email : $myEmail");

        },
       ),*/
               /* StreamBuilder(
                  stream: getData(), //_fetch(),
                  builder: (context, snapshot) {
                    late String Name;
                    late String Age;
                    late String Inquiries;
                    if (!snapshot.hasData) return CircularProgressIndicator();
                    return ListView.builder(
                        itemCount: (snapshot.data! as QuerySnapshot)
                            .docs
                            .length, //snapshot.data!.docs.length,
                        itemBuilder: (context, int index) {
                          final String Name;
                          return ListTile(
                            textColor: Colors.white,
                            // iconColor: Colors.white,

                            title: Text((snapshot.data! as QuerySnapshot)
                                .docs[index]['$myName']),
                            subtitle: Text((snapshot.data! as QuerySnapshot)
                                    .docs[index][
                                '$myEmail'] /*.toDate().toString()*/), //[DateTime.parse('timestamp')].toDate().toString()),//)]/*.toString()*/),
                          );
                        });
                  },
                ),*/

                /*StreamBuilder(
           stream:firestoreDB,
       builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) async {

       },
       )*/
              ],
            ),
          ),
        ),
      ],
    );
  }

  /* _fetch() async {

    final firebaseUser = await FirebaseAuth.instance.currentUser!;
    if (firebaseUser != null)
      await FirebaseFirestore.instance
          .collection('patient')
          .doc(firebaseUser.uid)
          .get()
          .then((value) {
            myName = value.data('Full Name');
        myEmail = ds.data['Email'];

        print(myEmail);
      }).catchError((e) {
        print(e);
      });
  }*/
 /* Stream<DocumentSnapshot> getData() async* {
    User user = await FirebaseAuth.instance.currentUser!;
    /*FirebaseFirestore.instance
         .collection('patient')
         .where("uid", isEqualTo: user.uid).snapshots();*/
    FirebaseFirestore.instance
        .collection('patient')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        myName = (doc["First Name"]);
        myEmail = (doc['Email']);
      });
    });
  }*/
}
