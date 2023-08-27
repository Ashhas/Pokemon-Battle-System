import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokemon_battle_system/game.dart';

void main() {
  // Set fullscreen
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Game(),
    );
  }
}
