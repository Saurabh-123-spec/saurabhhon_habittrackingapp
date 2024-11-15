import 'package:flutter/material.dart';

class HabitDetailScreen extends StatefulWidget {
  final String habitName;
  const HabitDetailScreen({Key? key, required this.habitName}) : super(key: key);

  @override
  _HabitDetailScreenState createState() => _HabitDetailScreenState();
}

class _HabitDetailScreenState extends State<HabitDetailScreen> {
  bool _isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.habitName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
              size: 100,
              color: _isCompleted ? Colors.green : Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              _isCompleted ? 'Habit Completed!' : 'Mark as Completed',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isCompleted = !_isCompleted;
                });
              },
              child: Text(_isCompleted ? 'Undo' : 'Complete Habit'),
            ),
          ],
        ),
      ),
    );
  }
}
