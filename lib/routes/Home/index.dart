import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jddemo/routes/Home/widgets/HomeCarousel.dart';
import 'package:jddemo/routes/Home/widgets/SearchBar.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[SearchBar(), HomeCarousel()],
      )),
    );
  }
}
