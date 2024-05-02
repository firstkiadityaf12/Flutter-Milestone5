import 'package:flutter/material.dart';
import 'package:todolist_app/shared/theme/font.dart';

class IntroPage3 extends StatelessWidget {
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
                          image: AssetImage('assets/img/intropage3.png'),
                          alignment: Alignment.bottomCenter,
                          fit: BoxFit.fitWidth)),
                  margin: const EdgeInsets.only(
                    bottom: 50,
                  ),
                ),
                //headline
                Text(
                  "Orgonaize your tasks",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  ),
                ),
                //descriotion
                Text(
                    'You can organize your daily tasks by adding your tasks into separate categories',
                    textAlign: TextAlign.center,
                    style: headlineParagraph)
              ],
            ),
          ),
        ));
  }
}