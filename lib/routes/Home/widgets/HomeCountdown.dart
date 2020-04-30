import 'package:flutter/widgets.dart';

class HomeCountdown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {}
}

class _HomeCountdown extends State<HomeCountdown> {
  @override
  void initState() {
    super.initState();
    _initCountdown();
  }

  // 初始化计时器
  void _initCountdown() {
    print('触发计时器');
  }

  @override
  Widget build(BuildContext context) {}
}
