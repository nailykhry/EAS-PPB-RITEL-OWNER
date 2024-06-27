import 'package:eas_ppb/home_page.dart';
import 'package:eas_ppb/register_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SimpleForm extends StatefulWidget {
  const SimpleForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SimpleFormState createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  final _formKey = GlobalKey<FormState>();
  final _noTelpController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _noTelpController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      String noTelp = _noTelpController.text;
      String password = _passwordController.text;

      // ignore: avoid_print
      print('Email: $noTelp');
      // ignore: avoid_print
      print('Password: $password');

      _noTelpController.clear();
      _passwordController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Berhasil Login')),
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Nomor HP Kamu ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: '*',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _noTelpController,
              decoration: InputDecoration(
                hintText: 'Contoh: 08382782624',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Color(0xFFEA0A2A),
                  ),
                ),
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nomor HP wajib diisi';
                }
                return null;
              },
            ),
            const SizedBox(height: 25),
            RichText(
              text: const TextSpan(
                text: 'Kata Sandi ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: '*',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Masukkan Kata Sandi',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Color(0xFFEA0A2A),
                  ),
                ),
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password wajib diisi';
                }
                return null;
              },
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xFFFFFFFF),
                backgroundColor: const Color(0xFFEA0A2A),
                minimumSize: const Size(305, 50),
              ),
              child: const Text('Masuk'),
            ),
            const SizedBox(height: 10),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Belum punya akun? ',
                  style: DefaultTextStyle.of(context).style.copyWith(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                      ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Daftar di sini',
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
