import 'package:flutter/material.dart';
import 'home_page.dart';
import 'quiz.dart';
import 'game_over.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/home-page',
      routes: {
      HomePage.routeName: (context) => const HomePage(),
      Quiz.routeName: (context) => const Quiz(),
      GameOver.routeName: (context) => const GameOver(),
      },
    );
       
  }
}
