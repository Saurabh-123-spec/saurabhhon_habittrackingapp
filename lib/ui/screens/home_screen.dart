import 'package:flutter/material.dart';
import 'package:saurabhhon_habbittracking_app/ui/screens/add_habit_screen.dart';
import 'package:saurabhhon_habbittracking_app/ui/screens/habbit_details_screen.dart';



class HomeScreen extends StatefulWidget {

   HomeScreen({super.key, this.newHabit = ''});
  String newHabit  ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  
}

class _HomeScreenState extends State<HomeScreen> {
  // Sample list of habits
  final List<String> habits = ["Drink Water", "Exercise", "Read Books"];
@override
  void initState() {
    // TODO: implement initState
    if (widget.newHabit != '') {
      habits.add(widget.newHabit);
    }
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habit Tracker'),
      ),
      body: ListView.builder(
        itemCount: habits.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(habits[index]),
            subtitle: Text('Daily Habit'),
            trailing: Icon(Icons.check_circle_outline),
            onTap: () {
              // Navigate to Habit Detail screen
               Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HabitDetailScreen(habitName: habits[index],)),
          );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddHabitScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


