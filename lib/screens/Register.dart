import 'package:flutter/material.dart';

import '../colors.dart';
import 'Login.dart';
import 'common/TextFeild.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Welcome onboard!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lets help you meet your tasks',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                InputFeild(
                  text: 'Enter your full name',
                ),
                const SizedBox(
                  height: 40,
                ),
                InputFeild(
                  text: 'Enter your email',
                ),
                const SizedBox(
                  height: 40,
                ),
                InputFeild(
                  text: 'Enter your password',
                ),
                SizedBox(
                  height: 40,
                ),
                InputFeild(
                  text: 'confirm password',
                ),
                SizedBox(
                  height: 100,
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
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 20),
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
                      'Already have an account?',
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        ' Sign In',
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
