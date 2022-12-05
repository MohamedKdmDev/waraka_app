import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:waraka_app/modules/rusalte/rusalte_screen.dart';
import 'modules/game/game_screen.dart';
import 'modules/start/start_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: start_screen(),
    );
  }
}
