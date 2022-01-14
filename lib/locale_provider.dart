import 'package:flutter/cupertino.dart';

class LocaleProvider with ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  set setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}
