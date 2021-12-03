import 'package:flutter/services.dart';

class Utils {
  static TextInputFormatter getNumberInputFormatter() {
    return FilteringTextInputFormatter.allow(RegExp(r'[0-9.-]'));
  }
}
