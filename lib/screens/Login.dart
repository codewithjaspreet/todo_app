import 'package:flutter/material.dart';
import 'package:todo_app/screens/Register.dart';

import '../colors.dart';
import 'common/TextFeild.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lets help you meet your tasks',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Image.asset('assets/login.png'),
                SizedBox(
                  height: 40,
                ),
                InputFeild(
                  text: 'Enter your email',
                ),
                SizedBox(
                  height: 40,
                ),
                InputFeild(
                  text: 'Confirm Password',
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Forget Password',
                  style: TextStyle(
                      color: Color(0xffAD491E), fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Opacity(
                      opacity: 0.65,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(25),
                        child: Center(
                            child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        )),
                        decoration: BoxDecoration(
                          color: Color(0xFFFAA885),
                        ),
                      ),
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
                      'Dont have an account ?',
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Text(
                        ' Sign up',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffAD491E),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
