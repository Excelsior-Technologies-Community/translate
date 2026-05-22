import 'package:flutter/material.dart';
import 'package:flutter_translate/src/cotroller.dart';

class TranslationProvider extends InheritedNotifier<TranslationController> {
  const TranslationProvider({
    super.key,
    required super.notifier,
    required super.child,
  });

  static TranslationController of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<TranslationProvider>()!
        .notifier!;
  }
}
