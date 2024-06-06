import 'package:flutter/material.dart';
import 'package:task_management/ui/screen/splash_screen.dart';

class TaskManagerApp extends StatelessWidget{
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        hintStyle: TextStyle(color: Colors.grey),
        border: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),
      ),
      ),
      home: SplashScreen(),
    );
  }

}