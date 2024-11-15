// import 'package:flutter/foundation.dart';
// import 'package:saurabhhon_habbittracking_app/repos/hive_repo.dart';
// import 'habit.dart'; // Import your Habit model

// class HabitProvider extends ChangeNotifier {
//   List<Habit> _habits = [];

//   List<Habit> get habits => _habits;

//   void addHabit(Habit habit) {
//     _habits.add(habit);
//     notifyListeners();
//   }

//   void toggleHabitCompletion(int index) {
//     _habits[index].isCompleted = !_habits[index].isCompleted;
//     notifyListeners();
//   }

//   // Example: Load habits from an adapter (e.g., SQLite, SharedPreferences, or API)
//   Future<void> loadHabits() async {
//     // Assume the HabitAdapter is used here to load data
//     _habits = await HabitAdapter().getHabitsFromStorage();
//     notifyListeners();
//   }
// }
