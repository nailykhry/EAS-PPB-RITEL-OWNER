import 'package:eas_ppb/form/register_form.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/circle_header.png',
                fit: BoxFit.cover,
              ),
            ),
            const RegisterForm(),
          ],
        ),
      ),
    );
  }
}
