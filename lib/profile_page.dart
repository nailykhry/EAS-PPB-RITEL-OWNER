import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Akun Saya',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color(0xFFEA0A2A),
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                        child:
                            Icon(Icons.person, size: 40, color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Naily',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          Text('Bergabung sejak 27 Juni 2024',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('Saldo', style: TextStyle(color: Colors.white)),
                          Text('Rp 0',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Poin', style: TextStyle(color: Colors.white)),
                          Text('0 Poin',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Referral',
                              style: TextStyle(color: Colors.white)),
                          Text('0 orang',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text('Akun',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: const Text('Pengaturan Akun'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Dompet'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/dompet');
              },
            ),
            const ListTile(
              title: Text('Edukasi & Layanan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: const Text('Pusat Edukasi'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Layanan'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            const ListTile(
              title: Text('Toko & Alamat',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: const Text('Performa Toko'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Daftar Alamat'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Intip Margin'),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
                activeColor: const Color(0xFFEA0A2A),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFFFFFFFF),
                  backgroundColor: const Color(0xFFEA0A2A),
                  minimumSize: const Size(305, 50),
                ),
                child: const Text('Keluar'),
              ),
            ),
            const SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
