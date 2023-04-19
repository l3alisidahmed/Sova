import 'package:flutter/material.dart';
import 'package:sova/presentation/log_in.dart';
import 'package:sova/presentation/welcome_page.dart';
import 'package:sova/presentation/log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text("hello"),
      ),
    );
  }
}
