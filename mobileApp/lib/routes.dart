import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/home': (context) => const HomeScreen(),

  // Placeholder route until register_screen.dart is added
  '/register': (context) => const PlaceholderScreen(title: 'Register'),

  // Add other routes later like:
  // '/upload': (context) => UploadScreen(),
};

class PlaceholderScreen extends StatelessWidget {
  final String title;

  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title Screen Coming Soon')),
    );
  }
}
