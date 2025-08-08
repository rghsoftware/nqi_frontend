import 'package:flutter/material.dart';
import 'screens/quest_board_screen.dart';

void main() {
  runApp(const NQIApp());
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
