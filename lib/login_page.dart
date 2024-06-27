import 'package:eas_ppb/form/login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            const SimpleForm(),
          ],
        ),
      ),
    );
  }
}
