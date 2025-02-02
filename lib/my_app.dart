import 'package:flutter/material.dart';
import 'package:payments/home/presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp._();

  static const MyApp _instance = MyApp._();

  factory MyApp() => _instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payments Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
