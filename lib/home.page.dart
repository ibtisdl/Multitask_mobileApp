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
// on tap paramètre de bar ktkhdm fch knselectionni hdak select index byn chnu drt ldakhl glt lih set state sir lwidget anchangi state dlwidget
  List<Widget> pages = [HomeView(), LoginView(), CardsView(), ProfileView()];
  void changepage(int selectIndex) {
    setState(() {
      currIndex = selectIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Smart Tasker",
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currIndex,
        backgroundColor: Colors.indigo[900],
        selectedItemColor: Colors.indigo[100],
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Cards"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        //on ne de donne pas d index car ma méthode est prédéfini elle prend le paramètre depuis le click
        onTap: changepage,
      ),
    );
  }
}
