// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:modestnerd/app/view/landing.dart';
import 'package:modestnerd/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF1F2025),
        backgroundColor: const Color(0xFF1F2025),
        appBarTheme: const AppBarTheme(color: Color(0xFF1F2025)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF1F2025),
        ),
        fontFamily: 'Poppins',
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const Landing(),
    );
  }
}
