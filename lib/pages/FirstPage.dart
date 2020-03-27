import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  String name = "first_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
    );
  }
}
