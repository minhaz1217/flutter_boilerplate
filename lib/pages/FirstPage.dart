import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final String title;
  static String name = "first_page";

  FirstPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
    );
  }
}