import 'package:flutter/material.dart';
import 'package:login_test/views/register_page.dart';
import 'package:login_test/widget/custom_button.dart';
import 'package:login_test/widget/custom_textfied.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.05),
                  const Text(
                    "Enter your credentials to login",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: size.height / 40),

                  const CustomTextField(hint: "Username", icon: Icons.person),
                  SizedBox(height: size.height / 40),
                  const CustomTextField(hint: "Password", icon: Icons.lock),
                  SizedBox(height: size.height / 40),

                  CustomButton(text: "Login", onTap: () {}),
                  SizedBox(height: size.height / 40),

                  Center(
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.purple.shade700,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height / 40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const RegisterPage(),
                            ),
                          );
                        },
                        child: const Text("Sign Up"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
