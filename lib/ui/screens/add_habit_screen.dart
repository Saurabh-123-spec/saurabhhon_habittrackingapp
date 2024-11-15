import 'package:flutter/material.dart';
import 'package:saurabhhon_habbittracking_app/ui/screens/home_screen.dart';

class AddHabitScreen extends StatefulWidget {
  @override
  _AddHabitScreenState createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {
  final _habitController = TextEditingController();
  String _frequency = 'Daily';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Habit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _habitController,
              decoration: InputDecoration(labelText: 'Habit Name'),
            ),
            SizedBox(height: 16),
            DropdownButton<String>(
              value: _frequency,
              onChanged: (String? newValue) {
                setState(() {
                  _frequency = newValue!;
                });
              },
              items: <String>['Daily', 'Weekly', 'Monthly']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Handle saving the new habit
                Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen(newHabit: _habitController.text,)),
          );
              },
              child: Text('Save Habit'),
            ),
          ],
        ),
      ),
    );
  }
}
