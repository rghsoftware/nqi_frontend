import 'package:flutter/material.dart';
import '../widgets/quest_column.dart'; // Import the QuestColumn widget

class QuestBoardScreen extends StatelessWidget {
  const QuestBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder data for our board
    final Map<String, List<String>> boardData = {
      'Idea Greenhouse': ['Write a novel', 'Learn to code in Rust'],
      'Quest Log': ['Learn Ukulele', 'Build a PC'],
      "This Cycle's Quest": ['Finish NQI Frontend'],
      'Next Up': ['Create static UI for Quest Board', 'Add state management'],
      'In-Progress': ['Setup Flutter Project'],
      'Harvested': ['Setup Go Backend', 'Create User Registration API'],
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Neural Quest Interface'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Use a ListView with horizontal scrolling to hold the columns
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: boardData.entries.map((entry) {
            return QuestColumn(title: entry.key, questTitles: entry.value);
          }).toList(),
        ),
      ),
    );
  }
}
