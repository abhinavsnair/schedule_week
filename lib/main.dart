import 'package:flutter/material.dart';
import 'package:schedule_week/screens/landing_screen.dart';
import 'package:schedule_week/screens/schedule_screen.dart';
import 'package:schedule_week/screens/schedule_screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'landing',
      routes: {
        'landing': (context) => const LandingScreen(),
        'scheduler': (context) => const ScheduleScreen2(),
      },
    );
  }
}
