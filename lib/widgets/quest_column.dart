import 'package:flutter/material.dart';
import '../models/quest.dart';
import 'quest_card.dart';

class QuestColumn extends StatelessWidget {
  final String title;
  final List<Quest> quests;

  const QuestColumn({super.key, required this.title, required this.quests});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: quests.length,
              itemBuilder: (context, index) {
                return QuestCard(title: quests[index].title);
              },
            ),
          ),
        ],
      ),
    );
  }
}
