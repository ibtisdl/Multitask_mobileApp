import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("images/avatar.jpg"),
          ),
          SizedBox(
            height: 30,
          ),
          Text("Ibtissam SAADALI",
              style: TextStyle(fontSize: 30, color: Colors.indigo[900])),
          SizedBox(
            height: 30,
          ),
          Text(
            "ibtisdl@emsi.ma",
            style: TextStyle(fontSize: 30, color: Colors.indigo[900]),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 20,
                backgroundColor: Colors.indigo[900],
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text("Modifier Profil"))
        ],
      ),
    );
  }
}
