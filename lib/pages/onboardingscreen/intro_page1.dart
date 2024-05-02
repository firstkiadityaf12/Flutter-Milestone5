import 'package:flutter/material.dart';
import 'package:todolist_app/shared/theme/font.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(18, 18, 18, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 80,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //image
                Container(
                  width: 230,
                  height: 230,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/intropage1.png'),
                          alignment: Alignment.bottomCenter,
                          fit: BoxFit.fitWidth)),
                  margin: const EdgeInsets.only(
                    bottom: 50,
                  ),
                ),
                //headline
                Text(
                  "Manage your tasks",
                  style: headline,
                ),
                //descriotion
                Text(
                    'You can easily manage all of your daily tasks in DoMe for free',
                    textAlign: TextAlign.center,
                    style: headlineParagraph),
              ],
            ),
          ),
        ));
  }
}