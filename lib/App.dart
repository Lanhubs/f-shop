import 'package:flutter/material.dart';
import 'package:liams/Pages/Onboarding_Page.dart';
import 'package:liams/models/Cart.dart';
import "package:provider/provider.dart";

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) => const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: OnboardingPage(),
            ));
  }
}
