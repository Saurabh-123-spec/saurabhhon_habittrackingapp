import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

//part 'hive_service.g.dart'; // Necessary for code generation

@HiveType(typeId: 0)
class Habit extends HiveObject {
  @HiveField(0)
  final String name;
  
  @HiveField(1)
  bool completed;

  Habit({required this.name, this.completed = false});
}

class HiveService {
  static Future<void> init() async {
    await Hive.initFlutter();
    //Hive.registerAdapter(HabitAdapter());
  }

  static Future<Box<Habit>> openHabitBox() async {
    return await Hive.openBox<Habit>('habits');
  }

  static Future<void> addHabit(Habit habit) async {
    final box = await openHabitBox();
    await box.add(habit);
  }

  static Future<List<Habit>> getHabits() async {
    final box = await openHabitBox();
    return box.values.toList();
  }
}


