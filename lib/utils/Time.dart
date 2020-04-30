class TimeUtils {
  // 补零
  static String _zeroize(int num) {
    if (num < 10) {
      return '0$num';
    }

    return num.toString();
  }

  // 获取时间 map
  static Map<String, String> getDateMap(int milliseconds) {
    // 获取目标时间对象
    final DateTime targetDateTime =
        DateTime.fromMillisecondsSinceEpoch(milliseconds);
    final year = targetDateTime.year.toString();
    final month = _zeroize(targetDateTime.month);
    final day = _zeroize(targetDateTime.day);
    final hour = _zeroize(targetDateTime.hour);
    final minute = _zeroize(targetDateTime.minute);
    final second = _zeroize(targetDateTime.second);

    return {
      'year': year,
      'month': month,
      'day': day,
      'hour': hour,
      'minute': minute,
      'second': second
    };
  }

  // 获取日期字符串
  static String getDateStr(int milliseconds, String seperate) {
    final _seperate = seperate ?? '-';
    const dateMap = getDateMap(milliseconds);
  }
}
