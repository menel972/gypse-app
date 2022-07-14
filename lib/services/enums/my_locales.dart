enum MyLocales {
  fr,
  en,
  es,
}

class MyLocale {
  MyLocales toLocale(String text) {
    if (text == MyLocales.fr.name) return MyLocales.fr;
    if (text == MyLocales.en.name) return MyLocales.en;
    if (text == MyLocales.es.name) return MyLocales.es;

    throw Error.safeToString('Le texte ne correspond à aucune locale');
  }
}
