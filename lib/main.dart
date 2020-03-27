import 'package:flutter/material.dart';

import 'pages/FirstPage.dart';
import 'Routes.dart';

void main() => runApp(MyApp());

var pages = [
  FirstPage(),
];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Prodigious UI',
        initialRoute: '/',
        routes: Routes.routes);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _listItem(BuildContext context, int index) {
    return ListTile(
      title: Text(
        pages[index].name,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => pages[index]));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          child: Text("flutter_boilerplate"),
          color: Colors.amber,
        ),
      ),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) => _listItem(context, index),
      ),
    );
  }
}
