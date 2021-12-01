import 'package:flutter/material.dart';
import 'package:flutter_minimal_internationalization/minimal_localization.dart';

class LocalApp extends StatelessWidget {
  const LocalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MinimalLocalization.of(context).title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(MinimalLocalization.of(context).getValue("title")),
            Text(getTranslatedText(context, "subTitle")),
          ],
        ),
      ),
    );
  }
}
