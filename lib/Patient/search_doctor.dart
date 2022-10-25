
import 'package:app_ui/Patient/home_into.dart';
import 'package:app_ui/components/constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchDoctor extends SearchDelegate {
  CollectionReference _firebaseFirestore =
      FirebaseFirestore.instance.collection("doctor");

  static const routeName = '/searchdoctor';

  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    assert(theme != null);
    return theme.copyWith(
      // AppBarTheme copies from the context making use of the overall theme.
      appBarTheme: AppBarTheme.of(context).copyWith(
        brightness: colorScheme.brightness,
        backgroundColor: colorScheme.brightness == Brightness.dark
            ? Colors.white //grey[900]
            : Color(0xFF2196F3),
        iconTheme: theme.primaryIconTheme.copyWith(color: Colors.white),
        /*textTheme: Theme.of(context).textTheme.copyWith(
          headline6: TextStyle(color: Colors.white),
        ),*/
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        /*searchBoxInputDecoration: const InputDecoration(
          prefixStyle: TextStyle(color: Colors.white),
          suffixStyle: TextStyle(color: Colors.white),
        ), toolbarTextStyle: TextTheme(headline6: TextStyle( color: Colors.white, fontSize: 18,),).bodyText2, titleTextStyle: TextTheme(headline6: TextStyle( color: Colors.white, fontSize: 18,),).headline6,*/
      ),
      inputDecorationTheme: searchFieldDecorationTheme ??
          InputDecorationTheme(
            hintStyle: searchFieldStyle ?? theme.inputDecorationTheme.hintStyle,
            border: InputBorder.none,
            /*prefixStyle: TextStyle(color: Colors.white),
            suffixStyle: TextStyle(color: Colors.white),*/
          ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.blue));

    return <Widget>[
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  HomePage()));
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _firebaseFirestore.snapshots().asBroadcastStream(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            // print(snapshot.data);
            if (snapshot.data!.docs
                .where((QueryDocumentSnapshot<Object?> element) =>
                    element['Full Name']
                        .toString()
                        .toLowerCase()
                        .contains(query.toLowerCase()))
                .isEmpty) {
              return Center(
                child: Text('No Search query found'),
              );
            } else {
              return ListView(
                //child: Container(
                // child: Row(
                children: [
                  ...snapshot.data!.docs
                      .where((QueryDocumentSnapshot<Object?> element) =>
                          element['Full Name']
                              .toString()
                              .toLowerCase()
                              .contains(query.toLowerCase()))
                      .map((QueryDocumentSnapshot<Object?> data) {
                    final String fullname = data['Full Name'];
                    final String location = data['Work Location'];

                    return ListTile(
                      onTap: () {
                        /*Navigator.push(context, MaterialPageRoute(
                              builder:(context) => SearchDoctor()));*/
                      },
                      title: Text(fullname),
                      subtitle: Text(location),
                    );
                  })
                ],

                //  ),
              );
            }
          }
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: const Text('Search anything here'),
    );
  }
}
