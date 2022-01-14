class MinimalLanguages {
  static const _english = {
    "title": "Hello World",
    "subTitle": "Welcome to Homescreen"
  };
  static const _spanish = {
      "title": "Hola Mundo",
      "subTitle": "Bienvenido a la pantalla de inicio"
    };
  static const _arabic =  {
      "title": "مرحبا بالعالم",
      "subTitle": "مرحبًا بك في الشاشة الرئيسية"
    };

  static const minimalLangs = <String, Map<String, String>>{
    "en": _english,
    "es": _spanish,
    "ar": _arabic,
  };
}
