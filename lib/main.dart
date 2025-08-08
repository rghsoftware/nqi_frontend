import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/quest_board_provider.dart';
import 'screens/quest_board_screen.dart';

void main() {
  runApp(
    // Wrap the entire app in a ChangeNotifierProvider.
    // This makes the QuestBoardProvider instance available to all widgets below it in the tree.
    ChangeNotifierProvider(
      create: (context) => QuestBoardProvider(),
      child: const NQIApp(),
    ),
  );
}

class NQIApp extends StatelessWidget {
  const NQIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neural Quest Interface',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const QuestBoardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
