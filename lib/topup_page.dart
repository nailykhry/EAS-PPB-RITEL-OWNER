import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up Saldo',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFEA0A2A)),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Masukkan jumlah top up yang kamu inginkan',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '0',
                labelText: 'Jumlah Top Up',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFEA0A2A),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Minimum Top Up Saldo Rp 20.000',
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const AlertDialog(
                        title: Text('Complete Payment in'),
                        content: Text('00 Days 05 Hours 53 Minutes 20 seconds'),
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFFFFFFFF),
                  backgroundColor: const Color(0xFFEA0A2A),
                  minimumSize: const Size(305, 50),
                ),
                child: const Text('Selanjutnya'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
