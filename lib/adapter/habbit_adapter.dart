// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'habit_provider.dart'; // Import the HabitProvider

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => HabitProvider(),
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HabitListScreen(),
//     );
//   }
// }

// class HabitListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Fetch habits from the provider
//     var habits = context.watch<HabitProvider>().habits;

//     return Scaffold(
//       appBar: AppBar(title: Text('Habit Tracker')),
//       body: Column(
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               // Add a new habit
//               var newHabit = Habit(
//                 name: 'Read a Book',
//                 createdAt: DateTime.now(),
//               );
//               context.read<HabitProvider>().addHabit(newHabit);
//             },
//             child: Text('Add Habit'),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: habits.length,
//               itemBuilder: (context, index) {
//                 var habit = habits[index];
//                 return ListTile(
//                   title: Text(habit.name),
//                   trailing: IconButton(
//                     icon: Icon(
//                       habit.isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
//                     ),
//                     onPressed: () {
//                       context.read<HabitProvider>().toggleHabitCompletion(index);
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
