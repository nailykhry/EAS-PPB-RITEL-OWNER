// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:eas_ppb/login_page.dart';
import 'package:flutter/material.dart';

class TokoForm extends StatefulWidget {
  const TokoForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TokoFormState createState() => _TokoFormState();
}

class _TokoFormState extends State<TokoForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _tokoController = TextEditingController();
  final _alamatController = TextEditingController();
  final _passwordController = TextEditingController();
  final _konfirmController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _tokoController.dispose();
    _alamatController.dispose();
    _passwordController.dispose();
    _konfirmController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      String nama = _namaController.text;
      String toko = _tokoController.text;
      String alamat = _alamatController.text;
      String password = _passwordController.text;
      String konfirm = _konfirmController.text;

      print('Nama: $nama');
      print('Nama Toko: $toko');
      print('Alamat: $alamat');
      print('Password: $password');
      print('Konfirmasi Password: $konfirm');

      _namaController.clear();
      _tokoController.clear();
      _alamatController.clear();
      _passwordController.clear();
      _konfirmController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Berhasil Menambahkan Detail Toko')),
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          const Text(
            'Yuk, siapkan Profil Toko Kamu untuk mulai berjualan',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 8),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Nama Kamu ',
                    style: TextStyle(color: Colors.black),
                    children: const [
                      TextSpan(
                        text: '*',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _namaController,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Nama Kamu',
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
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama wajib diisi';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'Nama Toko ',
                    style: TextStyle(color: Colors.black),
                    children: const [
                      TextSpan(
                        text: '*',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _tokoController,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Nama Toko Kamu',
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
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama Toko wajib diisi';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'Alamat Toko ',
                    style: TextStyle(color: Colors.black),
                    children: const [
                      TextSpan(
                        text: '*',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _alamatController,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Kecamatan, Kota/Kabupaten',
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
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Alamat Toko wajib diisi';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'Kata Sandi ',
                    style: TextStyle(color: Colors.black),
                    children: const [
                      TextSpan(
                        text: '*',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
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
                      return 'Kata Sandi wajib diisi';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'Ulangi Kata Sandi ',
                    style: TextStyle(color: Colors.black),
                    children: const [
                      TextSpan(
                        text: '*',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _konfirmController,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Kembali Kata Sandi',
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
                      return 'Konfirmasi Kata Sandi wajib diisi';
                    }
                    if (value != _passwordController.text) {
                      return 'Kata Sandi tidak cocok';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color(0xFFFFFFFF),
                    backgroundColor: const Color(0xFFEA0A2A),
                    minimumSize: const Size(305, 50),
                  ),
                  child: const Text('Selanjutnya'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
