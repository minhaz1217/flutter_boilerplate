import 'package:flutter/widgets.dart';

import 'main.dart';
import 'pages/FirstPage.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
    // FirstPage.name : (context) => FirstPage( "First Page "),

    //Single_Line_Theme.name  : (context) => Single_Line_Theme_Stateful(),
  };
}
