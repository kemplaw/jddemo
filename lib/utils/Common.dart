import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonUtils {
  // 默认圆角配置
  static BorderRadius defaultBorderRadiusConfig() {
    return BorderRadius.circular(ScreenUtil().setWidth(8));
  }
}
