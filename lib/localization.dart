import 'package:flutter/cupertino.dart';

class FlutterLocalizations {
  static FlutterLocalizations of(BuildContext context) {
    return Localizations.of(context, FlutterBlocLocalizations);
  }

  String get appTitle => "ToDo";
}

class FlutterLocalizationsDelegate
    extends LocalizationsDelegate<FlutterBlocLocalizations> {
  @override
  Future<FlutterBlocLocalizations> load(Locale locale) =>
      Future(() => FlutterBlocLocalizations());

  @override
  bool isSupported(Locale locale) =>
      locale.languageCode.toLowerCase().contains("en");

  @override
  bool shouldReload(FlutterBlocLocalizationDelegate old) => false;
}
