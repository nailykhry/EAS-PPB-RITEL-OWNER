import 'package:flutter/material.dart';

class Product1 extends StatelessWidget {
  const Product1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFFEA0A2A),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FractionallySizedBox(
                  widthFactor: 0.4,
                  child: Image.asset(
                    'assets/images/ceramic.png', // Replace with your image URL
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 20,
                indent: 20,
                endIndent: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 Set Bit Ceramic Cangkir Tatak Alamanda',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Rp 199.900',
                      style: TextStyle(color: Color(0xFFEA0A2A)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle notification icon press
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 10),
                        foregroundColor: const Color(0xFFFFFFFF),
                        backgroundColor: const Color(0xFFEA0A2A)),
                    child: const Text('Tambah'),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.share, color: Color(0xFFEA0A2A)),
                  const SizedBox(width: 10),
                  const Icon(Icons.delete, color: Color(0xFFEA0A2A)),
                ],
              )
            ],
          ),
        ),
        const SizedBox(width: 20),
        Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFFEA0A2A),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FractionallySizedBox(
                  widthFactor: 0.58,
                  child: Image.asset(
                    'assets/images/wardrobe.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 20,
                indent: 20,
                endIndent: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lemari Pakaian Sliding LSD Marino',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Rp 2.282.850',
                      style: TextStyle(color: Color(0xFFEA0A2A)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle notification icon press
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 10),
                        foregroundColor: const Color(0xFFFFFFFF),
                        backgroundColor: const Color(0xFFEA0A2A)),
                    child: const Text('Tambah'),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.share, color: Color(0xFFEA0A2A)),
                  const SizedBox(width: 10),
                  const Icon(Icons.delete, color: Color(0xFFEA0A2A)),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
