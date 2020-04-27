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
  // 主题列表
  static List<MaterialColor> get themes => _themes;
}
