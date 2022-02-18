import 'package:exam/core/constants/my_text_style.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Menu",
            style: MyTextStyle.myMenuTextStyle,
          ),
          Text(
            "Helo, Admin",
            style: MyTextStyle.myHeloAdminTextStyle,
          ),
        ],
      ),
    ));
  }
}
