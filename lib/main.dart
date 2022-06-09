import 'package:flutter/material.dart';
import 'package:lesson2/viewscreen/counterdemo_screen.dart';
import 'package:lesson2/viewscreen/lifecycle_screen.dart';
import 'package:lesson2/viewscreen/start_screen.dart';

void main() {
  runApp(const Lesson2App());

}

class Lesson2App extends StatelessWidget {
  
  const Lesson2App({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName:(context) => const StartScreen(),
        CounterDemoScreen.routeName:(context) => const CounterDemoScreen(), 
        LifcycleScreen.routeName:(context) => const LifcycleScreen()
      },
    );

  }


}