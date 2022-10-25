import 'package:app_ui/Chatbot/Chat.dart';

import 'package:app_ui/Doctor/doctorupdate.dart';
import 'package:app_ui/Doctor/login.dart';
import 'package:app_ui/Doctor/patientNotification.dart';
import 'package:app_ui/Patient/search_doctor.dart';
import 'package:app_ui/about.dart';
import 'package:app_ui/drawer_item.dart';
import 'package:app_ui/DiseasePrediction/symptoms_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Web_view/home_page.dart';

class Doc_NavigationDrawer extends StatelessWidget {
  const Doc_NavigationDrawer({Key? key}) : super(key: key);



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
              name: 'Patients' ' Notification',
              icon: Icons.notifications,
              onPressed: () => onItemPressed(context, index: 1),
            ),
            const SizedBox(
              height: 15,
            ),
            DrawerItem(
              name: ' Scheduling Appointments',
              icon: Icons.calendar_month,
              onPressed: () => onItemPressed(context, index: 2),
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
              onPressed: () => onItemPressed(context, index: 3),
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
              onPressed: () => onItemPressed(context, index: 4),
            ),
            const SizedBox(
              height: 15,
            ),
            DrawerItem(
              name: 'About',
              icon: Icons.app_blocking_outlined,
              onPressed: () => onItemPressed(context, index: 5),
            ),
            const SizedBox(
              height: 15,
            ),
            DrawerItem(
              name: 'Log out',
              icon: Icons.logout,
              onPressed: () => onItemPressed(context, index: 6),
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
                builder: (context) =>
                    HomePage() /*const SearchDoctor() */
                ));
        break;

      case 1:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    patientNotificationScreen() //Doctorsignin()//SearchDoctor()//patientNotificationScreen(Age: '', Name: '', Inquiries: '',)
                ));
        break;
      case 2:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:
                    (context) => /*const SymptomCheck()*/ Doctorsignin() //SearchDoctor()
                ));
        break;
      case 3:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:
                    (context) => Chat()
                ));
        break;
      case 4:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:
                    (context) =>  doctorProfile()
                ));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AboutScreen()));
        break;
      case 6:
        FirebaseAuth.instance.signOut().then((value) {
          print("Signed Out");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Doctorsignin()));
        });
        break;

      /*default:
        Navigator.pop(context);
        break;*/
    }
  }

  Widget headerWidget() {
    return Row(
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
              ],
            ),
          ),
        ),
      ],
    );

  }
 /* Future getCurrentUserData() async{
    try {
      DocumentSnapshot ds = await userCollection.doc(uid).get();
      String  firstname = ds.get('FirstName');
      String lastname = ds.get('LastName');
      return [firstname,lastname];
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}*/
}
