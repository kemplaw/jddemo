import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jddemo/utils/Common.dart';

class HomeCarousel extends StatelessWidget {
  // 轮播图列表
  final List<_ImageWrapper> carouselImageList = [
    _ImageWrapper(path: 'assets/images/q70.jpg'),
    _ImageWrapper(path: 'assets/images/bg_1.jpg'),
    _ImageWrapper(path: 'assets/images/bg_2.jpg'),
  ];

  // 轮播项目集合
  List _carouselChildren() {
    return carouselImageList.map((img) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[Expanded(flex: 1, child: img)]),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25)),
      child: CarouselSlider(
        options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            viewportFraction: 1.0,
            height: ScreenUtil().setHeight(280)),
        items: _carouselChildren(),
      ),
    );
  }
}

// 单个图片封装
class _ImageWrapper extends StatelessWidget {
  _ImageWrapper({this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: CommonUtils.defaultBorderRadiusConfig(),
        child: Image.asset(path, width: 100, fit: BoxFit.cover));
  }
}
