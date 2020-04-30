import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jddemo/routes/Home/widgets/HomeCarousel.dart';
import 'package:jddemo/routes/Home/widgets/HomeGridCarousel.dart';
import 'package:jddemo/routes/Home/widgets/HomeSecKill.dart';
import 'package:jddemo/routes/Home/widgets/SearchBar.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          SearchBar(),
          HomeCarousel(),
          HomeGridCarousel(),
          HomeSceKill()
        ],
      )),
    );
  }
}
