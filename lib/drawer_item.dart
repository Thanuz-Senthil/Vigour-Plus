import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget{
  const DrawerItem({Key? key, required this.name,required this.icon,required this.onPressed}) : super(key: key);

  final String name;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
    child:SizedBox(
      height: 40,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),//EdgeInsets.only(left: 20, right: 50),
          ),
            Icon(icon,
          size: 20,
              color: new Color(0xFF2196F3),// color: Colors.black54,
          ),
          const SizedBox(
            width: 40,
          ),
          Text(name,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black54,//blueGrey,
          ),
          )
        ],
      ),
    ),
    );
  }
}