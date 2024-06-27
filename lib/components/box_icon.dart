import 'package:flutter/material.dart';

class BoxIcon extends StatelessWidget {
  const BoxIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: [
            IconButton(
              icon: const Icon(Icons.store_mall_directory, color: Colors.white),
              onPressed: () {
                // Handle notification icon press
                Navigator.pushNamed(context, '/profile');
              },
            ),
            const Text(
              'Profile  Toko',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(width: 50),
        Container(
          width: 2.0,
          height: 50.0,
          color: Colors.white,
        ),
        const SizedBox(width: 50),
        Column(
          children: [
            IconButton(
              icon: const Icon(Icons.share, color: Colors.white),
              onPressed: () {
                // Handle notification icon press
              },
            ),
            const Text(
              'Bagikan Toko',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
