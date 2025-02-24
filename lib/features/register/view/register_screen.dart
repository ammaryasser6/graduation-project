import 'package:final_project/features/login/view/screens/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.blue.withOpacity(0.7), Colors.white],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildTextField(
                    label: 'Username',
                    hint: 'Enter your username',
                    icon: Icons.person,
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                    label: 'Email',
                    hint: 'Enter your email',
                    icon: Icons.email,
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                    label: 'Date',
                    hint: 'MM/DD/YYYY',
                    icon: Icons.calendar_today,
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                    label: 'Age',
                    hint: 'Enter your age',
                    icon: Icons.cake,
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                    label: 'National ID',
                    hint: 'Enter your national ID',
                    icon: Icons.badge,
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                    label: 'Password',
                    hint: 'Enter your password',
                    icon: Icons.lock,
                    isPassword: true,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.all(Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          'By signing up, you are agreeing to our terms & conditions and privacy policy',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("already have account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text("login"))
                  ])
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField({
    required String label,
    required String hint,
    required IconData icon,
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white38),
            prefixIcon: Icon(icon, color: Colors.white38),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
          ),
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
