import 'package:flutter/material.dart';

class DompetPage extends StatelessWidget {
  const DompetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dompet',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFFEA0A2A),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text(
                    'Saldo Alfamind',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Rp 0',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                        ),
                        child: const Text(
                          'Reset CVV',
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/topup');
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.orange,
                          backgroundColor: Colors.white,
                        ),
                        child: const Text('Topup Saldo'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'History Transaksi Bulan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 8),
                  DropdownButton<String>(
                    isExpanded: true,
                    hint: const Text('Pilih Tanggal'),
                    items: <String>['21 Jun 2024'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                  const SizedBox(height: 8),
                  const ListTile(
                    title: Text('21 Jun 2024 00:00'),
                    subtitle: Text('INITIAL_BALANCE'),
                    trailing: Text('Rp 0',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
