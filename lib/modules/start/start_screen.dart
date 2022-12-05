
import 'package:flutter/material.dart';
import 'package:waraka_app/modules/game/game_screen.dart';
import 'package:waraka_app/shared/components/components.dart';

class start_screen extends StatefulWidget {
  const start_screen({Key? key}) : super(key: key);

  @override
  State<start_screen> createState() => _start_screenState();
}

class _start_screenState extends State<start_screen> {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: double.infinity,
                child: Image.asset(
                  'assets/images/vs_screen.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: MaterialButton(
                  onPressed: ()  {
                   
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Game_Screen(),
                        ),
                      );
                    });
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Color.fromARGB(255, 97, 97, 97),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        width: 210.0,
                        height: 56.0,
                      ),
                      DefaultButtonContainer(
                        text: "PLAY NOW",
                        color: Colors.white,
                        icon: Icons.play_circle,
                        radius: 30.0,
                        widthSizeBox: 15.0,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
