import 'package:api_practice/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(API());
}

class API extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
