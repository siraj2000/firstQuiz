import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text = "";
  final VoidCallback onTap;

  CustomButton({super.key, required this.text, required this.onTap});

  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 100, 62, 84),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            // style: const TextStyle(color: Colors.white, fontSize: 16),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
