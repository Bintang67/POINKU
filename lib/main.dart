import 'package:flutter/material.dart';
import 'package:poinku/login.dart';
import 'package:poinku/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POINKU',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
  routes: {
        '/login': (context) => const Login(),
        '/home': (context) => const home(), 
      },
    );
  }
}

