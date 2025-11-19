import 'package:flutter/material.dart';
import 'package:login_test/generated/l10n.dart';
import 'package:login_test/main.dart';
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
                  // زر تغيير اللغة
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.language, color: Colors.black),
                      onPressed: () {
                        Locale newLocale =
                            Localizations.localeOf(context).languageCode == 'en'
                            ? const Locale('ar')
                            : const Locale('en');

                        MyApp.setLocale(context, newLocale);
                      },
                    ),
                  ),

                  Text(
                    S.of(context).WelcomeBack,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: size.height * 0.05),

                  Text(
                    S.of(context).Enter_your_credentials_to_login,
                    style: TextStyle(color: Colors.black54),
                  ),

                  SizedBox(height: size.height / 40),

                  CustomTextField(
                    hint: S.of(context).Username,
                    icon: Icons.person,
                  ),
                  SizedBox(height: size.height / 40),

                  CustomTextField(
                    hint: S.of(context).Password,
                    icon: Icons.lock,
                  ),
                  SizedBox(height: size.height / 40),

                  CustomButton(text: S.of(context).Login, onTap: () {}),
                  SizedBox(height: size.height / 40),

                  Center(
                    child: Text(
                      S.of(context).Forgot_password,
                      // style: TextStyle(
                      //   color: Colors.purple.shade700,
                      //   fontWeight: FontWeight.w600,
                      // ),
                    ),
                  ),

                  SizedBox(height: size.height / 40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(S.of(context).Create_your_account),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const RegisterPage(),
                            ),
                          );
                        },
                        child: Text(S.of(context).Sign_Up),
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
