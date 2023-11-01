import 'package:flutter/material.dart';
import 'package:quote_generator_app/views/home_view.dart';

void main() {
  runApp(const QuoteGeneratorApp());
}

class QuoteGeneratorApp extends StatelessWidget {
  const QuoteGeneratorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Teko',
      ),
      home: const HomeView(),
    );
  }
}
