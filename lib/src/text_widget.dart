import 'package:flutter/material.dart';
import 'package:flutter_translate/src/provider.dart';


class TranslateText
    extends StatelessWidget {

  final String textKey;

  final Map<String, String>
      translations;

  final TextStyle? style;

  const TranslateText({
    super.key,
    required this.textKey,
    required this.translations,
    this.style,
  });

  @override
  Widget build(BuildContext context) {

    final controller =
        TranslationProvider.of(
      context,
    );

    final translatedText =
        translations[
                controller
                    .currentLanguage] ??

            translations['en'] ??

            textKey;

    return Text(
      translatedText,
      style: style,
    );
  }
}