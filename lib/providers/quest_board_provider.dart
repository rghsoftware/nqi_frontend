import 'package:flutter/foundation.dart';
import '../models/quest.dart';

class QuestBoardProvider with ChangeNotifier {
  final Map<String, List<Quest>> _boardData = {
    'Idea Greenhouse': [
      Quest(id: '1', title: 'Write a novel'),
      Quest(id: '2', title: 'Learn to code in Rust'),
    ],
    'Quest Log': [
      Quest(id: '3', title: 'Learn Ukulele'),
      Quest(id: '4', title: 'Build a PC'),
    ],
    "This Cycle's Quest": [Quest(id: '5', title: 'Finish NQI Frontend')],
    'Next Up': [
      Quest(id: '6', title: 'Create static UI for Quest Board'),
      Quest(id: '7', title: 'Add state management'),
    ],
    'In-Progress': [Quest(id: '8', title: 'Setup Flutter Project')],
    'Harvested': [
      Quest(id: '9', title: 'Setup Go Backend'),
      Quest(id: '10', title: 'Create User Registration API'),
    ],
  };

  Map<String, List<Quest>> get boardData => _boardData;

  void addQuest(String title) {
    final newQuest = Quest(
      id: DateTime.now().toString(), // Use timestamp as a simple unique ID
      title: title,
    );
    _boardData['Idea Greenhouse']?.add(newQuest);
    // Notify all listening widgets that the state has changed, so they can rebuild.
    notifyListeners();
  }
}
