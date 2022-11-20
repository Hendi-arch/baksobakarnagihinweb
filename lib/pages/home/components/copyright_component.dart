import 'package:app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CopyrightComponent extends StatelessWidget {
  const CopyrightComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: RichText(
        text: const TextSpan(
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          text: "© 2022 ",
          children: [
            TextSpan(
              text: "Bakso Bakar Nagihin",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppTheme.myPrimarySwatch,
              ),
            ),
            TextSpan(text: " All Right Reserved."),
          ],
        ),
      ),
    );
  }
}
