import 'package:logger/logger.dart';

class LogNow {
  static bug(data) {
    var l = Logger();
    l.e(data);
  }

  static info(data) {
    var l = Logger();
    l.i(data);
  }

  static debug(data) {
    var l = Logger();
    l.d(data);
  }
}
