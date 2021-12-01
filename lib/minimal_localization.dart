import 'package:flutter/material.dart';
import 'package:flutter_minimal_internationalization/minimal_lang.dart';

class MinimalLocalization {
  final Locale? locale;
  MinimalLocalization({this.locale});

  static MinimalLocalization of(BuildContext context) =>
      Localizations.of<MinimalLocalization>(context, MinimalLocalization)!;

  static const _localizedValues = minimalLangs;

  static List<String> languages() => _localizedValues.keys.toList();

  String get title => _localizedValues[locale!.languageCode]!["title"]!;

  String getValue(String val) {
    return _localizedValues[locale!.languageCode]![val]!;
  }
}

String getTranslatedText(BuildContext context, String value) {
  return MinimalLocalization.of(context).getValue(value);
}
