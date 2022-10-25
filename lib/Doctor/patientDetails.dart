/*import 'package:app_ui/Doctor/PatientData.dart';
import'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class patientDetailsScreen extends StatefulWidget{
  const patientDetailsScreen({Key? key}) : super(key: key);


  @override
  _patientDetailsScreenState createState() => _patientDetailsScreenState();
}

class  _patientDetailsScreenState extends State <patientDetailsScreen> {
  var firestoreDB = FirebaseFirestore.instance.collection('feedback')
      .snapshots();

  /*late String Name;
  late String Age;
  late String Inquiries;
  List<PatientData> dataList = [];*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        /*leading: IconButton(icon:Image.asset("images/menu2.png"),
            onPressed: () {
          Scaffold.of(context).openDrawer();
            }),*/
        title: Text("Patient's Details",
          style: TextStyle(
              color: Colors.white54,

              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),


      ),
      body:/* SingleChildScrollView(
        child: SizedBox(
          child:*/
      Container( // SizedBox(
    width: double.infinity,

    child:Center(
      child:

           /* child:*/StreamBuilder(

              stream: firestoreDB,
              builder: (context, snapshot) {
                late String Name;
                late String Age;
                late String Inquiries;
                if (!snapshot.hasData) return CircularProgressIndicator();
                return ListView.builder(
                    itemCount: (snapshot.data! as QuerySnapshot).docs.length,
                    //snapshot.data!.docs.length,
                    itemBuilder: (context, int index) {
                      return Container(
                        /*margin: EdgeInsets.all(20),
                    color: Color(0xFF2196F3),*/

                          child: ListTile(

                            title: Text((snapshot.data! as QuerySnapshot)
                                .docs[index]['Name']),
                            subtitle: Text((snapshot.data! as QuerySnapshot)
                                .docs[index]['Age']),
                            //:  Text((snapshot.data! as QuerySnapshot).docs[index]['Inquiries']),
                          )
                      );

                      /* return Text(
                    (snapshot.data! as QuerySnapshot).docs[index]['Name']
                      (snapshot.data! as QuerySnapshot).docs[index]['Inquiries']//snapshot.data.documents[index]['Name']
                );*/
                      /*return CardUI(
                    (snapshot.data! as QuerySnapshot).docs[index]['Name']['Age']['Inquiries']
                      //(snapshot.data! as QuerySnapshot).docs[index]['Inquiries']//snapshot.data.documents[index]['Name']
                );*/
                    }
                );
              },
           // ),
      ),
       // ],


           /* child: Container(

              child: SizedBox(
                height: 50,
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 100,
                child: ElevatedButton.icon(

                    onPressed: () {

                    },
                    icon: Icon(Icons.replay_5),
                    label: const Text(
                        'Reply'
                    )),
              ),
            )
          ],
        ),*/
     // ),
     //   ),

    ),
      ),

    );
  }
}

  class FeedbackDialog extends StatefulWidget {
  const FeedbackDialog({Key? key}) : super(key: key);

  @override
  State<FeedbackDialog> createState() => _FeedbackDialogState();
  }

  class _FeedbackDialogState extends State<FeedbackDialog> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
  _controller.dispose();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  return AlertDialog(
  content: Form(
  key: _formKey,
  child: TextFormField(
  controller: _controller,
  keyboardType: TextInputType.multiline,
  decoration: const InputDecoration(
  hintText: 'Enter your reply here',
  filled: true,
  ),
  maxLines: 5,
  maxLength: 4096,
  textInputAction: TextInputAction.done,
  validator: (String? text) {
  if (text == null || text.isEmpty) {
  return 'Please enter a value';
  }
  return null;
  },
  ),
  ),
  actions: [
  TextButton(
  child: const Text('Cancel'),
  onPressed: () => Navigator.pop(context),
  ),
  TextButton(
  child: const Text('Send'),
  onPressed: () async {
  // Only if the input form is valid (the user has entered text)
  if (_formKey.currentState!.validate()) {
  // We will use this var to show the result
  // of this operation to the user
  String message;

  try {
  // Get a reference to the `feedback` collection
  final collection =
  FirebaseFirestore.instance.collection('feedback');

  // Write the server's timestamp and the user's feedback
  await collection.doc().set({
  'timestamp': FieldValue.serverTimestamp(),
  'feedback': _controller.text,
  });

  message = 'Feedback sent successfully';
  } catch (e) {
  message = 'Error when sending feedback';
  }

  // Show a snackbar with the result
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
  Navigator.pop(context);
  }
  },
  )
  ],
  );
  }
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
  }*/
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget {
  final String uid;//documentId;

  GetUserName(this.uid);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('feedback');//users
    var firestoreDB = FirebaseFirestore.instance.collection('feedback').snapshots();


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

      body: Container(
        child: Column(

        children:[
      StreamBuilder(

        stream:  firestoreDB,
        builder: (context, snapshot) {
          late String Name;
          late String Age;
          late String Inquiries;
          if(!snapshot.hasData) return CircularProgressIndicator();
          return ListView.separated(//builder(

              itemCount: (snapshot.data! as QuerySnapshot).docs.length,//snapshot.data!.docs.length,
              itemBuilder: (context,int index){
                final String Name;
               /* return Card(
                  /* margin: EdgeInsets.all(20),
                color: Color(0xFF2196F3),*/

                    child: ListTile(
                      // textColor: Colors.white,
                      // iconColor: Colors.white,
                      onTap: () {
                        var user;
                        /*Navigator.push(context, MaterialPageRoute(
                            builder:(context) => GetUserName(index.toString())//patientDetailsScreen()
                        ));*/
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
                      //:  Text((snapshot.data! as QuerySnapshot).docs[index]['Inquiries']),
                    )
                );*/
                /* return Text(
                    (snapshot.data! as QuerySnapshot).docs[index]['Name']
                      (snapshot.data! as QuerySnapshot).docs[index]['Inquiries']//snapshot.data.documents[index]['Name']
                );*/
                /*return CardUI(
                    (snapshot.data! as QuerySnapshot).docs[index]['Name']['Age']['Inquiries']
                      //(snapshot.data! as QuerySnapshot).docs[index]['Inquiries']//snapshot.data.documents[index]['Name']
                );*/


                return Column(
                  children: [
                    Text((snapshot.data! as QuerySnapshot).docs[index]['Name']),
                    Text((snapshot.data! as QuerySnapshot).docs[index]['Age']),
                    Text((snapshot.data! as QuerySnapshot).docs[index]['Inquiries']),
                  ],
                );


              },separatorBuilder: (context, index) { // <-- SEE HERE
            return Divider();
          }
          );


        },
      ),

        /*  Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: TextButton(
              child: const Text(
                '    Reply   ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              style: ButtonStyle(
                foregroundColor:
                MaterialStateProperty.all(Colors.white),
                backgroundColor:
                MaterialStateProperty.all(Color(0xFF2196F3)),
                shape:
                MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onPressed: () async {
              /*  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ()));*/
                /*if (_formKey.currentState!.validate()) {
                  String message;

                  try {
                    User? user = FirebaseAuth.instance.currentUser;
                    final collection = FirebaseFirestore.instance
                        .collection('feedback'); //feedback
                    await collection.doc(user!.uid).set(
                      {
                        'UserID': user.uid,
                        'timestamp': DateTime
                            .now(), //FieldValue.serverTimestamp(),
                        'Inquiries': _feedbackTextController.text,
                        'Name': _NameTextController.text,
                        'Age': _AgeTextController.text,
                      },
                    );
                    message =
                    'Your Inquiries Send Successfully . Doctor will reply soon.';
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(message)));
                    Navigator.pop(context);
                  } catch (_) {
                    message = 'Error when sending inquiries';
                  }
                }
              },*/
              },
            ),
          ),*/
        ],
        ),

      ),
    );




    /* return FutureBuilder<DocumentSnapshot>(
      future: users.doc(uid).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          getData() async{

            String userId = (await FirebaseAuth.instance.currentUser?.uid ??"");//FirebaseAuth.instance.currentUser!()).uid;

            return FirebaseFirestore.instance.collection('feedback').doc(FirebaseAuth.instance.currentUser!.uid);//(userId);
          }
         /* FirebaseFirestore.instance
              .collection('users')
              .doc(user.uid)
              .get()
              .then((DocumentSnapshot documentSnapshot) {
            if (documentSnapshot.exists) {
              print('Document data: ${documentSnapshot.data()}');
            } else {
              print('Document does not exist on the database');
            }
          });*/
        //  return Text("Full Name: ${data['Name']} ${data['Age']}");
        }

        //return Text("loading");
          return Column(
            children: [
            Container(
                child:Text('name'),
            ),
            ],
            );

      },
    );*/
  }
}

