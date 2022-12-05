import 'package:flutter/material.dart';
import 'package:waraka_app/modules/game/game_screen.dart';
import 'package:waraka_app/shared/components/components.dart';

class Result_Screen extends Game_Screen {
  const Result_Screen({super.key});

  @override
  State<Result_Screen> createState() => _Result_ScreenState();
}

class _Result_ScreenState extends State<Result_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'YOU',
              style: TextStyle(
                fontSize: 65.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              Rusalt(),
              style: TextStyle(
                fontSize: 65.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultContainer(
                    text: '${GameScreenState.me}',
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  DefaultContainer(
                    text: '${GameScreenState.you}',
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Game_Screen(),
                    ),
                  );
                  GameScreenState.me = 0;
                  GameScreenState.you = 0;
                });
              },
              child: DefaultButtonContainer(
                text: 'Restart',
                color: Colors.amber,
                icon: Icons.restart_alt_outlined,
                width: 190.0,
                widthSizeBox: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
