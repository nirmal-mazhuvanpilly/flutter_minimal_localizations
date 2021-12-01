import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_minimal_internationalization/minimal_localization.dart';

class MinimalLocalizationDelegate
    extends LocalizationsDelegate<MinimalLocalization> {
  const MinimalLocalizationDelegate();

  @override
  bool isSupported(Locale locale) =>
      MinimalLocalization.languages().contains(locale.languageCode);

  @override
  Future<MinimalLocalization> load(Locale locale) =>
      SynchronousFuture<MinimalLocalization>(
          MinimalLocalization(locale: locale));

  @override
  bool shouldReload(covariant LocalizationsDelegate<MinimalLocalization> old) =>
      false;
}
