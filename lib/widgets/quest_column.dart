import 'package:flutter/material.dart';
import 'quest_card.dart'; // Import the QuestCard widget

class QuestColumn extends StatelessWidget {
  final String title;
  final List<String> questTitles;

  const QuestColumn({
    super.key,
    required this.title,
    required this.questTitles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Fixed width for each column
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Column Title
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          // List of Quest Cards
          Expanded(
            child: ListView.builder(
              itemCount: questTitles.length,
              itemBuilder: (context, index) {
                return QuestCard(title: questTitles[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
