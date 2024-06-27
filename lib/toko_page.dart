import 'package:eas_ppb/form/toko_form.dart';
import 'package:flutter/material.dart';

class TokoPage extends StatelessWidget {
  const TokoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: SizedBox(
                  width: 100,
                  child: Image.asset(
                    'assets/images/grocery.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const TokoForm(),
            ],
          ),
        ),
      ),
    );
  }
}
