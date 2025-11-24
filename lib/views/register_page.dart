import 'package:flutter/material.dart';
import 'package:login_test/core/text_theme.dart';
import 'package:login_test/generated/l10n.dart';
import 'package:login_test/views/login_page.dart';
import 'package:login_test/widget/custom_button.dart';
import 'package:login_test/widget/custom_textfied.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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

                Text(
                  S.of(context).Sign_Up,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

                SizedBox(height: size.height / 30),

                Text(
                  S.of(context).Create_your_account,
                  style: (Theme.of(context).textTheme.bodyLarge),
                ),

                SizedBox(height: size.height / 30),

                CustomTextField(
                  controller: emailController,
                  hint: S.of(context).Username,
                  icon: Icons.email,
                ),

                SizedBox(height: size.height / 30),

                CustomTextField(
                  controller: passwordController,
                  hint: S.of(context).Password,
                  icon: Icons.lock,
                ),

                SizedBox(height: size.height / 30),

                CustomTextField(
                  controller: passwordController,
                  hint: S.of(context).Confirm_Password,
                  icon: Icons.lock,
                ),

                SizedBox(height: size.height / 30),

                CustomButton(text: S.of(context).Sign_Up, onTap: () {}),

                SizedBox(height: size.height / 30),

                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(S.of(context).Or),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),

                SizedBox(height: size.height / 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).Login),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => LoginPage()),
                        );
                      },
                      child: Text(
                        S.of(context).Enter_your_credentials_to_login,
                        // style: Theme.of(context).textTheme.headlineMedium,
                        style: AppTextTheme.darkTextTheme.bodyMedium,
                      ),
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
