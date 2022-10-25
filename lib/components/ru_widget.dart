import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
    color: Colors.white,
  );
}

TextFormField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextFormField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Color(0xFF2196F3),//Colors.white,
    style: TextStyle(color: Colors.black54.withOpacity(0.9)),


    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Color(0xFF2196F3),//Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.grey/*white*/.withOpacity(0.9)),
     // filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
     // fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: const BorderSide(color: Color(0xFF2196F3),/*width: 0, style: BorderStyle.none*/)),

      focusedBorder: OutlineInputBorder(
        borderRadius:  BorderRadius.circular(50),
        borderSide: BorderSide(
          color:Color(0xFF2196F3),
        ),
      ),

      fillColor: Colors.grey[200],
      filled: true,
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,

  );
}

Container firebaseUIButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50)),

    child: ElevatedButton(
      onPressed: () {


        onTap();
      },
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18
        ),
      ),
      style: ButtonStyle(

          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Color(0xFF64B5F6);//Colors.black26;
            }
            return  Color(0xFF2196F3);//Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))),
    ),
  );
}