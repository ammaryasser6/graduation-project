import 'package:final_project/features/layout/view/screens/layout_screen.dart';
import 'package:final_project/features/auth/login/logic/login_cubit.dart';
import 'package:final_project/features/auth/register/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isAgree = false;
  bool isVisible = false;
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Stack(
        children: [
          LoginBackgroud(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: loginKey,
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
                          controller: emailC,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Value";
                            }
                            return null;
                          },
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
                          controller: passwordC,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Value";
                            }
                            return null;
                          },
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
                        BlocConsumer<LoginCubit, LoginState>(
                          buildWhen: (previous, current) =>
                              current is LoginLoadingState ||
                              current is LoginSuccessState ||
                              current is LoginErrorState,
                          listener: (context, state) {
                            if (state is LoginSuccessState) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LayoutScreen(),
                                ),
                                (route) => false,
                              );
                            } else if (state is LoginErrorState) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(state.msg ?? "")));
                            }
                          },
                          builder: (context, state) {
                            return ElevatedButton(
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
                                if (loginKey.currentState!.validate()) {
                                  context.read<LoginCubit>().login(
                                        email: emailC.text,
                                        password: passwordC.text,
                                      );
                                }

                                // Handle button press
                              },
                              child: state is LoginLoadingState
                                  ? const Center(
                                      child: CircularProgressIndicator())
                                  : const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("login",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        SizedBox(width: 10),
                                        Icon(Icons.arrow_forward),
                                      ],
                                    ),
                            );
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dont have an acount?",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegisterScreen()));
                              },
                              child: Text("Register",
                                  style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 211, 23, 23),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
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
