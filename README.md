# Flutter Translate

A lightweight and reusable Flutter translation package for multilingual apps with dynamic language switching and customizable translations.

Perfect for:
- multilingual apps
- localization systems
- language switchers
- educational apps
- international apps
- dynamic text translations

---

# ✨ Features

- 🌍 Multi-language Support
- 🔄 Dynamic Language Switching
- ⚡ Instant UI Updates
- 🧠 Reusable Translation System
- 📱 Lightweight Architecture
- 🎨 Customizable Translate Widget
- 🔤 Multiple Language Support
- 🚀 InheritedNotifier-based State Management
- 🪶 Easy Integration

---
### demo

https://github.com/user-attachments/assets/ecee850a-0154-4527-ac02-2de29002bbcf

# 📦 Installation

Add dependency in your `pubspec.yaml`:

```yaml
dependencies:
  flutter_translate: 
    path: ../
```

Then run:

```bash
flutter pub get
```

---

# 🚀 Import

```dart
import 'package:flutter_translate/flutter_translate.dart';
```

---

# 🛠 Basic Usage

```dart
TranslateText(

  textKey: 'hello',

  translations: {

    'en': 'Hello',

    'gu': 'હેલો',

    'hi': 'नमस्ते',
  },
)
```

---

# 📱 Full Example

```dart
import 'package:flutter/material.dart';

import 'package:flutter_translate/flutter_translate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp
    extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() =>
      _MyAppState();
}

class _MyAppState
    extends State<MyApp> {

  final controller =
      TranslationController();

  @override
  Widget build(BuildContext context) {

    return TranslationProvider(

      notifier: controller,

      child: MaterialApp(

        debugShowCheckedModeBanner:
            false,

        home: Scaffold(

          appBar: AppBar(
            title: const Text(
              'Translate Demo',
            ),
          ),

          body: Center(

            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment
                      .center,

              children: [

                /// TRANSLATED TEXT
                TranslateText(

                  textKey: 'hello',

                  translations: {

                    'en': 'Hello',

                    'gu': 'હેલો',

                    'hi': 'नमस्ते',
                  },

                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                /// LANGUAGE BUTTONS
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .center,

                  children: [

                    ElevatedButton(
                      onPressed: () {

                        controller
                            .changeLanguage(
                          'en',
                        );
                      },

                      child: const Text(
                        'English',
                      ),
                    ),

                    const SizedBox(
                      width: 10,
                    ),

                    ElevatedButton(
                      onPressed: () {

                        controller
                            .changeLanguage(
                          'gu',
                        );
                      },

                      child: const Text(
                        'Gujarati',
                      ),
                    ),

                    const SizedBox(
                      width: 10,
                    ),

                    ElevatedButton(
                      onPressed: () {

                        controller
                            .changeLanguage(
                          'hi',
                        );
                      },

                      child: const Text(
                        'Hindi',
                      ),
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
```

---

# 🌍 Supported Languages

Supports any language:

```dart
translations: {

  'en': 'Hello',

  'gu': 'હેલો',

  'hi': 'नमस्ते',

  'fr': 'Bonjour',

  'es': 'Hola',
}
```

---

# ⚙️ Available Widgets

| Widget | Description |
|---|---|
| `TranslateText` | Translated text widget |
| `TranslationProvider` | App-wide translation provider |
| `TranslationController` | Language state controller |

---

# 📂 Package Structure

```text
lib/
 ├── flutter_translate.dart
 └── src/
      ├── text_widget.dart
      ├── provider.dart
      ├── controller.dart
      
```

---

# 🎨 Custom Styling

```dart
TranslateText(

  textKey: 'welcome',

  translations: {

    'en': 'Welcome',

    'gu': 'સ્વાગત છે',
  },

  style: const TextStyle(
    fontSize: 24,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  ),
)
```




# 📄 License

MIT License

Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files to deal in the Software
without restriction.
