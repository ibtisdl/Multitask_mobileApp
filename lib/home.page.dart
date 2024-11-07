import 'package:appmultitasks/Screens/cards.view.dart';
import 'package:appmultitasks/Screens/home.view.dart';
import 'package:appmultitasks/Screens/login.view.dart';
import 'package:appmultitasks/Screens/profile.view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currIndex = 0;

  List<Widget> pages = [HomeView(), LoginView(), CardsView(), ProfileView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Multitask Application",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.indigo[900],
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: IndexedStack(
          index: currIndex,
          children: pages,
        ),
      )),
    );
  }
}
