import 'dart:math';

import 'package:flutter/material.dart';
import 'package:waraka_app/modules/rusalte/rusalte_screen.dart';
import 'package:waraka_app/shared/components/components.dart';


class Game_Screen extends StatefulWidget {
  const Game_Screen({super.key});

  @override
  State<Game_Screen> createState() => GameScreenState();
}

class GameScreenState extends State<Game_Screen> {
  int roundNum = 1;
  int clickedNum = 0;
  late int lenth;
  late int randomNum;
  static int me = 0;
  static int you = 0;
  List<String> images = [
    'assets/images/hajara.png',
    'assets/images/mikas.png',
    'assets/images/waraka.png',
  ];
  String selckedImages = 'assets/images/waraka.png';
  String rendomImages = 'assets/images/mikas.png';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DefaultContainer(
                    text: '$me',
                    color: Colors.amber,
                  ),
                  const Text(
                    'Scorre',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  DefaultContainer(
                    text: '$you',
                    color: Colors.amber,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/halaba.png',
                    ),
                    height: 500.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 70.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            child: Image(
                              image: AssetImage('$selckedImages'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            child: Image(
                              image: AssetImage('$rendomImages'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              DefaultContainer(
                text: 'Round $roundNum',
                color: Colors.amber,
                width: 140.0,
                height: 40.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              selckedImages = images[0];
                              lenth = 0;
                              randomNum = Random().nextInt(images.length);
                              if (lenth < randomNum) {
                                (lenth == 0 && randomNum == 2) ? you++ : me++;
                              } else if (lenth > randomNum) {
                                (lenth == 2 && randomNum == 0) ? me++ : you++;
                              }
                              rendomImages = images[randomNum];
                              clickedNum++;
                              clickedNum % 3 == 0
                                  ? (roundNum < 3 ? roundNum++ : roundNum = 1)
                                  : null;
                              if (roundNum == 3) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Result_Screen(),
                                  ),
                                );
                              }
                            });
                          },
                          icon: Image(
                            image: AssetImage('${images[0]}'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              selckedImages = images[1];
                              lenth = 1;
                              randomNum = Random().nextInt(images.length);
                              if (lenth < randomNum) {
                                me++;
                              } else if (lenth > randomNum) {
                                you++;
                              }
                              rendomImages = images[randomNum];
                              clickedNum++;
                              clickedNum % 3 == 0
                                  ? (roundNum < 3 ? roundNum++ : roundNum = 1)
                                  : null;
                              if (roundNum == 3) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Result_Screen(),
                                  ),
                                );
                              }
                            });
                          },
                          icon: Image(
                            image: AssetImage('${images[1]}'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              selckedImages = images[2];
                              lenth = 2;
                              randomNum = Random().nextInt(images.length);
                              if (lenth < randomNum) {
                                (lenth == 0 && randomNum == 2) ? you++ : me++;
                              } else if (lenth > randomNum) {
                                (lenth == 2 && randomNum == 0) ? me++ : you++;
                              }
                              rendomImages = images[randomNum];
                              clickedNum++;
                              clickedNum % 3 == 0
                                  ? (roundNum < 3 ? roundNum++ : roundNum = 1)
                                  : null;
                              if (roundNum == 3) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Result_Screen(),
                                  ),
                                );
                              }
                            });
                          },
                          icon: Image(
                            image: AssetImage('${images[2]}'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
