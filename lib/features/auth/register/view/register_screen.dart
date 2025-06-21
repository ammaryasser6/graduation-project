import 'package:final_project/features/auth/login/login_screen.dart';
import 'package:final_project/features/auth/register/logic/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController email = TextEditingController();

  TextEditingController passwordC = TextEditingController();

  TextEditingController name = TextEditingController();

  TextEditingController nationalId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state is Registersuccess) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          } else if (state is Registererror) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message ?? '')));
          }
        },
        builder: (context, state) {
          var cubit = context.read<RegisterCubit>();
          return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue.shade900, Colors.blue.shade300],
                ),
              ),
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          _buildTextField(
                              controller: name,
                              label: 'name',
                              hint: 'Enter your username',
                              icon: Icons.person),
                          _buildTextField(
                              controller: email,
                              label: 'Email',
                              hint: 'Enter your email',
                              icon: Icons.email),
                          _buildTextField(
                            readOnly: true,
                            // controller: TextEditingController(),
                            controller: selectedTime == null
                                ? null
                                : TextEditingController(
                                    text:
                                        "${selectedTime?.year} / ${selectedTime?.month} / ${selectedTime?.day}"),
                            onTap: () {
                              showDate(context);
                            },

                            label: 'Date',
                            hint: 'MM/DD/YYYY',
                            icon: Icons.calendar_today,
                          ),
                          _buildTextField(
                              controller: nationalId,
                              label: 'National ID',
                              hint: 'Enter your national ID',
                              icon: Icons.badge),
                          _buildTextField(
                              controller: passwordC,
                              label: 'Password',
                              hint: 'Enter your password',
                              icon: Icons.lock,
                              isPassword: true),
                          SizedBox(height: 20),
                          Center(
                            child: Column(
                              children: [
                                ElevatedButton.icon(
                                  onPressed: () {
                                    cubit.pickImageFromGallery();
                                  },
                                  icon: Icon(Icons.upload, color: Colors.white),
                                  label: Text('Upload Photo',
                                      style: TextStyle(color: Colors.white)),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue.shade700,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 100, vertical: 16),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    cubit.pickImageFromCamera();
                                  },
                                  icon: Icon(Icons.camera_alt,
                                      color: Colors.white),
                                  label: Text('Open Camera',
                                      style: TextStyle(color: Colors.white)),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange.shade700,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 100, vertical: 16),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (value) {},
                              ),
                              Expanded(
                                child: Text(
                                  'By signing up, you agree to our terms & conditions and privacy policy.',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                if (selectedTime == null) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text("Please Enter Date")));
                                } else if (cubit.image64.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content:
                                              Text("Please select Image")));
                                } else {
                                  cubit.register(
                                    email: email.text,
                                    password: passwordC.text,
                                    name: name.text,
                                    nationalid: nationalId.text,
                                    dateofbirth:
                                        "${selectedTime?.year} / ${selectedTime?.month} / ${selectedTime?.day}",
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green.shade700,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 16),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              child: Text('Sign Up',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?"),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen()));
                                    },
                                    child: Text("Login"))
                              ])
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextField({
    TextEditingController? controller,
    required String label,
    required String hint,
    required IconData icon,
    bool isPassword = false,
    bool readOnly = false,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: isPassword,
        onTap: onTap,
        readOnly: readOnly,
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: Colors.blue.shade700),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade900, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  DateTime? selectedTime;

  void showDate(BuildContext context) async {
    DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (date != null) {
      selectedTime = date;
      setState(() {});
    }
  }
}
