import 'package:flutter/material.dart';
import 'package:flutter_application_1_test/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 248, 32, 32)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
