import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

/// Define all routes used in the app.
final Map<String, WidgetBuilder> appRoutes = {
  '/home': (context) => const HomeScreen(),

  // Temporary placeholder for Register Screen
  '/register': (context) => const PlaceholderScreen(title: 'Register'),

  // Future routes can be added here:
  // '/upload': (context) => UploadScreen(),
  // '/advice': (context) => AdviceScreen(),
  // '/logbook': (context) => LogbookScreen(),
};

/// A simple placeholder widget for screens under development.
class PlaceholderScreen extends StatelessWidget {
  final String title;

  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          '$title Screen Coming Soon',
          style: const TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}
