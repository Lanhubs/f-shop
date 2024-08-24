import 'package:flutter/material.dart';

class Sidebtn extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onClick;
  const Sidebtn(
      {super.key,
      required this.icon,
      required this.title,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: ListTile(
        onTap: onClick,
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(title, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
