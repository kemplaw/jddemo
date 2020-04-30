import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeGridCarousel extends StatelessWidget {
  // 列表项目内容
  final List<_GridItem> _gridList = [
    _GridItem('assets/icons/shopping.png', '京东超市'),
    _GridItem('assets/icons/device.png', '数码电器'),
    _GridItem('assets/icons/clothes.png', '京东服饰'),
    _GridItem('assets/icons/fresh.png', '京东生鲜'),
    _GridItem('assets/icons/hours.png', '京东到家'),
    _GridItem('assets/icons/service.png', '充值缴费'),
    _GridItem('assets/icons/buy.png', '9.9元拼'),
    _GridItem('assets/icons/quan.png', '领券'),
    _GridItem('assets/icons/money.png', '赚钱'),
    _GridItem('assets/icons/plus.png', 'PLUS会员'),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(children: _gridList);
  }
}

// 列表子项目
class _GridItem extends StatelessWidget {
  _GridItem(this.path, this.name);
  final String path;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(24)),
      width: MediaQuery.of(context).size.width / 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            path,
            width: ScreenUtil().setWidth(80),
            height: ScreenUtil().setHeight(80),
          ),
          Padding(
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
            child: Text(
              name,
              style: TextStyle(
                  color: Color.fromARGB(255, 102, 102, 102),
                  fontSize: ScreenUtil().setSp(24)),
            ),
          )
        ],
      ),
    );
  }
}
