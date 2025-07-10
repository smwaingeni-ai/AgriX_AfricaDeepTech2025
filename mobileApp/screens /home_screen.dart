import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget buildTile(BuildContext context,
      {required IconData icon, required String title, required String route}) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Card(
        margin: const EdgeInsets.all(8),
        child: ListTile(
          leading: Icon(icon, color: Colors.green),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AgriX Home')),
      body: ListView(
        children: [
          buildTile(
            context,
            icon: Icons.person,
            title: 'Edit Profile',
            route: '/register',
          ),
          // Add more tiles here as modules become available
        ],
      ),
    );
  }
}
