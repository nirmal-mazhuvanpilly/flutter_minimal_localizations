import 'package:flutter/material.dart';

class MinimalLocalization {
  final Locale? locale;
  MinimalLocalization({this.locale});

  static MinimalLocalization of(BuildContext context) =>
      Localizations.of<MinimalLocalization>(context, MinimalLocalization)!;

  static const _localizedValues = <String, Map<String, String>>{
    "en": {"title": "Hello World", "subTitle": "Welcome to Homescreen"},
    "es": {"title": "Hola Mundo","subTitle": "Bienvenido a la pantalla de inicio"}
  };

  static List<String> languages() => _localizedValues.keys.toList();

  String get title => _localizedValues[locale!.languageCode]!["title"]!;

  String getValue(String val) {
    return _localizedValues[locale!.languageCode]![val]!;
  }
}

String getTranslatedText(BuildContext context, String value) {
  return MinimalLocalization.of(context).getValue(value);
}
