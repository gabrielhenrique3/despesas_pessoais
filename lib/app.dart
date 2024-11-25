import 'package:despesas_pessoais/common/themes/default_themes.dart';
import 'package:despesas_pessoais/features/onboarding/onboarding_page.dart';
import 'package:despesas_pessoais/features/sing_up/sing_up_page.dart';
import 'package:despesas_pessoais/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget{
  const App ({super.key});

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      home: SingUpPage(),
    );
  }
}