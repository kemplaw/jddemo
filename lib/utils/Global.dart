import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 主题配置
const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];

class Global {
  // 缓存器
  static SharedPreferences _prefs;
  // 主题列表
  static List<MaterialColor> get themes => _themes;
  // 初始化全局信息，在 app 启动时运行
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
