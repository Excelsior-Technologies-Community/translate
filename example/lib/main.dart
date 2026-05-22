import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = TranslationController();

  @override
  Widget build(BuildContext context) {
    return TranslationProvider(
      notifier: controller,

      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold(
          appBar: AppBar(title: const Text('Translate Demo')),

          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                /// TRANSLATED TEXT
                TranslateText(
                  textKey: 'hello',

                  translations: {'en': 'Hello', 'gu': 'હેલો', 'hi': 'नमस्ते'},
                ),

                const SizedBox(height: 30),

                /// LANGUAGE BUTTONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.changeLanguage('en');
                      },

                      child: const Text('English'),
                    ),

                    const SizedBox(width: 10),

                    ElevatedButton(
                      onPressed: () {
                        controller.changeLanguage('gu');
                      },

                      child: const Text('Gujarati'),
                    ),

                    const SizedBox(width: 10),

                    ElevatedButton(
                      onPressed: () {
                        controller.changeLanguage('hi');
                      },

                      child: const Text('Hindi'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
