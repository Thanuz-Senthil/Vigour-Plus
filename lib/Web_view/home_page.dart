import 'package:app_ui/Web_view/my_webview.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diabetes Prediction"),
      ),
      body: Center(
          child:ElevatedButton.icon(
            label: Text('Click to Predict'),
            icon: Icon(Icons.move_up_sharp),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MyWebView(
                    title: "Insert Values",
                    selectedUrl: " http://10.0.2.2:5000/",
                  )
              ));
            },
          )
       /* child: FlatButton(
          child: Text("Click To Predict"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => MyWebView(
                  title: "Insert Values",
                  selectedUrl: " http://10.0.2.2:5000/",
                )
            ));
          },
        ),*/
      ),
    );
  }
}