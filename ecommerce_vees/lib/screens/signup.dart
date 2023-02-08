import 'package:ecommerce_vees/constants/global_variables.dart';
import 'package:ecommerce_vees/screens/signin.dart';
import 'package:flutter/material.dart';
import '../widgets/bottons_and_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
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
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 400,
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
                            controller: _nameController,
                            hint: "Name",
                            icon: Icons.person_add_alt_1,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextINputField(
                            controller: _nameController,
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
                                  builder: (context) => const SignIn()));
                            },
                            bt_txt: "Sign up",
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 15),
                              const Text(
                                "Already have an account?",
                                style: TextStyle(
                                    color: Color(0XFF1100FF),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              GestureDetector(
                                onTap: (() {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const SignIn()));
                                }),
                                child: const Text(
                                  "Sign in",
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
