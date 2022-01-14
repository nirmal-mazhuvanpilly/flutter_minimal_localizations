import 'package:flutter/material.dart';
import 'package:flutter_minimal_internationalization/locale_provider.dart';
import 'package:flutter_minimal_internationalization/localization/minimal_localization.dart';
import 'package:provider/provider.dart';

class LocalApp extends StatefulWidget {
  const LocalApp({Key? key}) : super(key: key);

  @override
  State<LocalApp> createState() => _LocalAppState();
}

class _LocalAppState extends State<LocalApp> {
  String dropDownValue = "English";

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text("Choose Language"),
                const SizedBox(width: 10),
                DropdownButton<String>(
                  value: dropDownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropDownValue = newValue!;
                      if (dropDownValue == "English") {
                        context.read<LocaleProvider>().setLocale =
                            const Locale("en", "");
                      } else if (dropDownValue == "Spanish") {
                        context.read<LocaleProvider>().setLocale =
                            const Locale("es", "");
                      } else if (dropDownValue == "Arabic") {
                        context.read<LocaleProvider>().setLocale =
                            const Locale("ar", "");
                      }
                    });
                  },
                  items: <String>['English', 'Spanish', 'Arabic']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
