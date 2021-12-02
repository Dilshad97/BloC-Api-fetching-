import 'package:flutter/material.dart';

import 'Api Calling Using Bloc & rx Dart & cheking State/ui/screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Covid List",
      debugShowCheckedModeBanner: false,
      home: CovidCases(),
    );
  }
}
