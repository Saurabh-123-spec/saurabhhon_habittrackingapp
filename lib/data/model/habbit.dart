class Habit {
  String name;
  bool isCompleted;
  DateTime createdAt;

  Habit({
    required this.name,
    this.isCompleted = false,
    required this.createdAt,
  });

  // Convert Habit to/from JSON (for local storage or API)
  factory Habit.fromJson(Map<String, dynamic> json) {
    return Habit(
      name: json['name'],
      isCompleted: json['isCompleted'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'isCompleted': isCompleted,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
