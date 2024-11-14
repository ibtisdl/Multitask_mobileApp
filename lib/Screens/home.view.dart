import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bienvenue !',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Explorez les fonctionnalités de notre application et restez informé.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Informations essentielles',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildInfoCard(
                  context,
                  icon: Icons.login,
                  color: Colors.blue,
                  title: 'Login',
                  subtitle: 'Connectez-vous',
                ),
                _buildInfoCard(
                  context,
                  icon: Icons.person,
                  color: Colors.pink,
                  title: 'Profil',
                  subtitle: 'Modifier votre profil',
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildInfoCard(
                  context,
                  icon: Icons.map,
                  color: Colors.green,
                  title: 'Carte',
                  subtitle: 'Localiser les endroits',
                ),
                _buildInfoCard(
                  context,
                  icon: Icons.more_horiz,
                  color: Colors.orange,
                  title: 'Autres',
                  subtitle: 'Selon vos intérêts',
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              'Conseils et Astuces',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Voici quelques conseils importants pour rester en sécurité et informé.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context,
      {required IconData icon,
      required Color color,
      required String title,
      required String subtitle}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 100,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 30),
          SizedBox(height: 8),
          Text(title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text(subtitle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
