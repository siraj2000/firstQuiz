import 'package:flutter/material.dart';
import 'package:login_test/generated/l10n.dart';
import 'package:login_test/main.dart';
import 'package:login_test/provider/theme_provider.dart';
import 'package:login_test/services/firebase_services.dart';
import 'package:login_test/views/home_screen.dart';
import 'package:login_test/views/register_page.dart';
import 'package:login_test/widget/custom_button.dart';
import 'package:login_test/widget/custom_textfied.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final provider = Provider.of<ThemeProvider>(context);

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
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: const Icon(Icons.sunny, color: Colors.black),
                          onPressed: () {
                            provider.changeMode();
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: const Icon(Icons.language, color: Colors.black),
                          onPressed: () {
                            Locale newLocale =
                                Localizations.localeOf(context).languageCode ==
                                    'en'
                                ? const Locale('ar')
                                : const Locale('en');

                            MyApp.setLocale(context, newLocale);
                          },
                        ),
                      ),
                    ],
                  ),

                  Text(
                    S.of(context).WelcomeBack,
                    style: Theme.of(context).textTheme.headlineMedium,
                    //style: AppTextTheme.lightTextTheme.headlineMedium,
                  ),

                  SizedBox(height: size.height * 0.05),

                  Text(
                    S.of(context).Enter_your_credentials_to_login,
                    style: Theme.of(context).textTheme.bodyLarge,
                    // style: AppTextTheme.lightTextTheme.bodyLarge,
                  ),

                  SizedBox(height: size.height / 40),

                  CustomTextField(
                    controller: emailController,
                    hint: S.of(context).Username,

                    icon: Icons.person,
                  ),
                  SizedBox(height: size.height / 40),

                  CustomTextField(
                    controller: passwordController,
                    hint: S.of(context).Password,
                    icon: Icons.lock,
                  ),
                  SizedBox(height: size.height / 40),

                  CustomButton(
                    text: S.of(context).Login,
                    onTap: () async {
                      try {
                        await FirebaseServices.signIn(
                          emailController.text.trim(),
                          passwordController.text.trim(),
                        );

                        print("tmmmmmmmmmm");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      } catch (e) {
                        print(e);
                      }
                    },
                  ),

                  SizedBox(height: size.height / 40),

                  Center(
                    child: Text(
                      S.of(context).Forgot_password,
                      // style: TextStyle(
                      //   color: Colors.purple.shade700,
                      //   fontWeight: FontWeight.w600,
                      // ),
                      style: Theme.of(context).textTheme.bodyLarge,
                      // style: AppTextTheme.lightTextTheme.bodyMedium,
                    ),
                  ),

                  SizedBox(height: size.height / 40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).Create_your_account,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
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
