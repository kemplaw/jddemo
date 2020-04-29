import 'package:flutter/material.dart';
import 'package:jddemo/routes/index.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JD',
      home: HomeRoute(),
    );
  }
}
