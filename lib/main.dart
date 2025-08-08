import 'package:flutter/material.dart';

void main() {
  runApp(const NQIApp());
}

class NQIApp extends StatelessWidget {
  const NQIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neural Quest Interface',
      // Define a simple theme to start with.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Set the home screen of the app.
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false, // Hides the debug banner
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Neural Quest Interface'),
      ),
      body: const Center(
        child: Text('Welcome to your Quest!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
