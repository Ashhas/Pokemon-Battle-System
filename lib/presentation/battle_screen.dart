import 'package:flutter/material.dart';
import 'package:pokemon_battle_system/presentation/battle_actions.dart';
import 'package:pokemon_battle_system/presentation/battle_enemy_side.dart';
import 'package:pokemon_battle_system/presentation/battle_player_side.dart';

class BattleScreen extends StatefulWidget {
  const BattleScreen({super.key});

  @override
  State<BattleScreen> createState() => _BattleScreenState();
}

class _BattleScreenState extends State<BattleScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background-grass.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BattleEnemySide(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                BattlePlayerSide(),
                BattleActions(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
