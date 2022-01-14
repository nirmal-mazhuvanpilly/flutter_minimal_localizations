import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_minimal_internationalization/local_app.dart';
import 'package:flutter_minimal_internationalization/localization/minimal_localization.dart';
import 'package:flutter_minimal_internationalization/localization/minimal_localization_delegate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => getTranslatedText(context, "title"),
      locale: const Locale("en",""),
      localizationsDelegates: const [
        MinimalLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
        Locale('ar', ''),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LocalApp(),
    );
  }
}
