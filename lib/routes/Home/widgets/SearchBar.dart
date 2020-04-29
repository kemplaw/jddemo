import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jddemo/utils/Theme.dart';

// 搜索栏
class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);

    return Container(
        color: AppThemeColor.baseColor,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(15)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(30)),
                  child: Icon(
                    Icons.dehaze,
                    color: Colors.white,
                  ),
                ),
                Expanded(flex: 1, child: _InputWrapperWidget()),
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(25)),
                    child: Text(
                      '登录',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(28)),
                    ))
              ],
            )));
  }
}

// 输入框容器部分
class _InputWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: TextInputType.text,
        obscureText: false,
        style: _searchTextStyle(context),
        decoration: InputDecoration(
            prefixIcon:
                Icon(Icons.search, color: Color.fromARGB(255, 183, 183, 183)),
            labelStyle: _searchTextStyle(context),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            labelText: '搜索商品',
            hasFloatingPlaceholder: false));
  }
}

// Logo 文字
class _LogoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('JD',
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: ScreenUtil().setSp(30),
            color: AppThemeColor.baseColor));
  }
}

// 分割线
class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(15), 0, 0, 0),
        child: Container(
          width: ScreenUtil().setWidth(2),
          height: ScreenUtil().setHeight(30),
          color: Color.fromARGB(255, 221, 221, 221),
        ));
  }
}

// 私有输入框 widget
class _InputWrapperWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(60),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(30))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _LogoText(),
              _Divider(),
              Expanded(flex: 1, child: _InputWiget())
            ]),
      ),
    );
  }
}

// 搜索文字样式
TextStyle _searchTextStyle(BuildContext context) {
  return TextStyle(
      color: Color.fromARGB(255, 117, 117, 117),
      fontSize: ScreenUtil().setSp(24));
}
