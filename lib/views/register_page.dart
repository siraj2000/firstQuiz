import 'package:flutter/material.dart';
import 'package:login_test/views/login_page.dart';
import 'package:login_test/widget/custom_button.dart';
import 'package:login_test/widget/custom_textfied.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 22),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xfffff2ad), Color(0xffffb3df)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.20),
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height / 30),
                const Text(
                  "Create your account",
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(height: size.height / 30),
                const CustomTextField(hint: "Email", icon: Icons.email),
                SizedBox(height: size.height / 30),
                const CustomTextField(hint: "Password", icon: Icons.lock),
                SizedBox(height: size.height / 30),
                const CustomTextField(
                  hint: "Confirm Password",
                  icon: Icons.lock,
                ),
                SizedBox(height: size.height / 30),

                CustomButton(text: "Sign Up", onTap: () {}),
                SizedBox(height: size.height / 30),

                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text("Or"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                SizedBox(height: size.height / 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const LoginPage()),
                        );
                      },
                      child: const Text("Login"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
