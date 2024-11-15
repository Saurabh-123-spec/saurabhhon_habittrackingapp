import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:saurabhhon_habbittracking_app/repos/hive_repo.dart';
import 'hive_service.dart';

class HabitNotifier extends StateNotifier<List<Habit>> {
  HabitNotifier() : super([]);

  Future<void> loadHabits() async {
    final habits = await HiveService.getHabits();
    state = habits;
  }

  Future<void> addHabit(Habit habit) async {
    await HiveService.addHabit(habit);
    await loadHabits(); // Refresh list
  }

  Future<void> toggleHabit(int index) async {
    final habit = state[index];
    habit.completed = !habit.completed;
    await habit.save(); // Save updated habit to Hive
    await loadHabits(); // Refresh list
  }
}

final habitProvider = StateNotifierProvider<HabitNotifier, List<Habit>>((ref) {
  return HabitNotifier();
});
