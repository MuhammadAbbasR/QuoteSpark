import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:quotespark/ui/splash_screen.dart';
import 'package:quotespark/view_model/Quote_view_model.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => Quote_ViewModel(),
      )
    ],
    child: const MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
