import 'package:flutter/material.dart';

import 'home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          //Fromseed ktmchi lina f les nuances dial la couleur au cas au ma3tinach l chi element l couleur dialo
          ThemeData(
              textTheme: TextTheme(
                  displayLarge:
                      TextStyle(fontSize: 45, color: Colors.indigo[400])),
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.brown, primary: Colors.brown),
              indicatorColor: Colors.green),
      home: HomePage(),
    );
  }
}
