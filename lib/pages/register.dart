import 'package:flutter/material.dart';

import '../shared/theme/color.dart';
import '../shared/theme/font.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/register';
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController confirmPasswordC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register',
                style: headline,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                'Username',
                style: sectionHeader,
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  controller: usernameC,
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Enter your Username',
                    hintStyle: TextStyle(
                      color: Color(0xFF535353),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: Color(0xFF979797),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Password',
                style: sectionHeader,
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  controller: passwordC,
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  autocorrect: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      color: Color(0xFF535353),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: Color(0xFF979797),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Confirm Password',
                style: sectionHeader,
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  controller: passwordC,
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  autocorrect: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Confirm you password',
                    hintStyle: TextStyle(
                      color: Color(0xFF535353),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: Color(0xFF979797),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8687E7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "or",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide(
                        color: Color(0xFF8875FF),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/img/google.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Login with google',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide(
                        color: Color(0xFF8875FF),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/img/apple.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Login with apple',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Color(0xFF979797),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
