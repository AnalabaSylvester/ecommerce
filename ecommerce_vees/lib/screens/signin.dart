import 'package:ecommerce_vees/screens/dashboard.dart';
import 'package:ecommerce_vees/screens/signup.dart';
import 'package:flutter/material.dart';

import '../constants/global_variables.dart';
import '../widgets/bottons_and_textfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 200,
                  height: 105,
                ),
                const Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 320,
                    width: 400,
                    decoration: BoxDecoration(
                      color: GlobalVariables.greyBackgroundCOlor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   "Name",
                          //   style: TextStyle(
                          //       fontSize: 15, fontWeight: FontWeight.w500),
                          // ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextINputField(
                            controller: _emailController,
                            hint: "Email",
                            icon: Icons.email,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextINputField(
                            controller: _passwordController,
                            hint: "Password",
                            icon: Icons.lock,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          BottonWidget(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                            },
                            bt_txt: "Sign in",
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 18),
                              const Text(
                                "Dont have an account?",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 0, 0),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              GestureDetector(
                                onTap: (() => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => const SignUp()))),
                                child: const Text(
                                  "Sign up",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
