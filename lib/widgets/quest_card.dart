import 'package:flutter/material.dart';

class QuestCard extends StatelessWidget {
  final String title;

  const QuestCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 2.0,
      child: Padding(padding: const EdgeInsets.all(12.0), child: Text(title)),
    );
  }
}
