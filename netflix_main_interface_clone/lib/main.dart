import 'package:flutter/material.dart';
import 'package:netflix_main_interface_clone/screens/home.dart';

void main() {
  runApp(const Navigator());
}

class Navigator extends StatelessWidget {
  const Navigator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const HomeScreen(),
    );
  }
}
