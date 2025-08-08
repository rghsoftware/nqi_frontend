import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/quest_board_provider.dart';
import '../widgets/quest_column.dart';

class QuestBoardScreen extends StatelessWidget {
  const QuestBoardScreen({super.key});

  void _showAddQuestDialog(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('New Quest Idea'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(labelText: 'Quest Title'),
        ),
        actions: [
          TextButton(
            child: const Text('Cancel'),
            onPressed: () => Navigator.of(ctx).pop(),
          ),
          TextButton(
            child: const Text('Add'),
            onPressed: () {
              if (controller.text.isNotEmpty) {
                Provider.of<QuestBoardProvider>(
                  context,
                  listen: false,
                ).addQuest(controller.text);
                Navigator.of(ctx).pop();
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final boardProvider = Provider.of<QuestBoardProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Neural Quest Interface'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: boardProvider.boardData.entries.map((entry) {
            return QuestColumn(title: entry.key, quests: entry.value);
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddQuestDialog(context),
        tooltip: 'Add Quest',
        child: const Icon(Icons.add),
      ),
    );
  }
}
