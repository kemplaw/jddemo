import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:jddemo/utils/Common.dart';
import 'package:jddemo/utils/Theme.dart';

// 京东秒杀
class HomeSceKill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(ScreenUtil().setWidth(20)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: CommonUtils.defaultBorderRadiusConfig()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[_SceKillHeader(), _SceKillProductList()],
      ),
    );
  }
}

// 京东秒杀 头部
class _SceKillHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
        height: ScreenUtil().setHeight(70),
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/bg_3.png'),
                fit: BoxFit.fitHeight)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset('assets/images/jd_ms.png',
                    width: ScreenUtil().setWidth(113),
                    height: ScreenUtil().setHeight(30)),
                Padding(
                  padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), 0,
                      ScreenUtil().setWidth(10), ScreenUtil().setWidth(5)),
                  child: Text(
                    '10点场',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(26),
                        color: Color.fromARGB(255, 35, 35, 38),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text('01:07:35')
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(18)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '更多秒杀',
                    style: TextStyle(
                        color: Color.fromARGB(255, 242, 55, 55),
                        fontSize: ScreenUtil().setSp(24)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(5)),
                    child: Image.asset(
                      'assets/icons/arrow_rt.png',
                      width: 11,
                      height: 11,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

// 秒杀商品列表
class _SceKillProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
      height: ScreenUtil().setHeight(230),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _SceKillProductItem('assets/images/sk_1.jpg'),
          _SceKillProductItem('assets/images/sk_2.jpg'),
          _SceKillProductItem('assets/images/sk_3.jpg'),
          _SceKillProductItem('assets/images/sk_4.jpg'),
          _SceKillProductItem('assets/images/sk_5.jpg'),
        ],
      ),
    );
  }
}

// 秒杀商品项目
class _SceKillProductItem extends StatelessWidget {
  _SceKillProductItem(this.path);
  final String path;

  // 折后价文字样式
  TextStyle _discountedRateTextStyle(int fontSize) {
    return TextStyle(
        fontSize: ScreenUtil().setSp(fontSize),
        color: AppThemeColor.baseColor,
        fontWeight: FontWeight.bold);
  }

  // 原价样式
  TextStyle _originalCostTextStyle(int fontSize) {
    return TextStyle(
        decoration: TextDecoration.lineThrough,
        fontSize: ScreenUtil().setSp(fontSize),
        color: Color.fromARGB(255, 153, 153, 153));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          path,
          fit: BoxFit.contain,
          width: ScreenUtil().setWidth(150),
          height: ScreenUtil().setHeight(150),
        ),
        Row(
          textBaseline: TextBaseline.ideographic,
          children: <Widget>[
            Text('￥', style: _discountedRateTextStyle(20)),
            Text(
              '699',
              style: _discountedRateTextStyle(28),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: ScreenUtil().setHeight(6)),
          child: Row(
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text('￥', style: _originalCostTextStyle(16)),
              Text(
                '799',
                style: _originalCostTextStyle(20),
              ),
            ],
          ),
        )
      ],
    );
  }
}
