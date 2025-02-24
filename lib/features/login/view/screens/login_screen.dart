import 'package:final_project/features/layout/view/screens/layout_screen.dart';
import 'package:final_project/features/register/view/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isAgree = false;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LoginBackgroud(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    const Text(
                      "Terms and Conditions",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "user name",
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "enter your name or email",
                        hintStyle: TextStyle(color: Colors.white54),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: isVisible,
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: Icon(isVisible == false
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          suffixIconColor: Colors.white38),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          value: isAgree,
                          onChanged: (bool? value) {
                            isAgree = value!;
                            setState(() {});
                            // Handle checkbox state
                          },
                        ),
                        const Expanded(
                          child: Text(
                            "I agree to the terms and conditions",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LayoutScreen(),
                          ),
                          (route) => false,
                        );

                        // Handle button press
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("login"),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("dont have an acount?"),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterScreen()));
                            },
                            child: Text("register"))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LoginBackgroud extends StatelessWidget {
  const LoginBackgroud({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue,
            Colors.blue.withOpacity(0.7),
            Colors.white,
          ],
        ),
      ),
    );
  }
}
