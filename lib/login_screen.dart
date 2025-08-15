import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/navigation_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = '/loginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 60),
                Image.asset("assets/images/freed.png"),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Enter Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!RegExp(
                            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',
                          ).hasMatch(value)) {
                            return 'please enter valid email';
                          }

                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }

                          return null;
                        },
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            // Navigator.push(context,
                            //   MaterialPageRoute(builder:
                            //       (context)=> ForgetScreen()),
                            // );
                          },
                          child: Text(
                            "Forget Password",
                            style: TextStyle(
                              color: Color(0xFFEF6969),
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => HomeScreen(),
                            //   ),
                            // );
                            // Navigator.pop(context);

                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => HomeScreen(),
                            //   ),
                            // );

                            Navigator.pushNamed(context, NavigationScreen.id);
                          }
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(55),
                          backgroundColor: Color(0xFFEF6969),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't Have An Account?",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(
                              //   builder: (context)=> SignUpScreen(),
                              // ));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xFFEF6969),
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
