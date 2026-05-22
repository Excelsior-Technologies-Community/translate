import 'package:flutter/material.dart';

class TranslationController
    extends ChangeNotifier {

  String currentLanguage = 'en';

  void changeLanguage(
    String language,
  ) {

    currentLanguage = language;

    notifyListeners();
  }
}