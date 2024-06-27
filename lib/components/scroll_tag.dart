import 'package:flutter/material.dart';

class ScrollTag extends StatelessWidget {
  const ScrollTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(.0),
      child: Row(
        children: [
          OutlinedButton(
            onPressed: () {
              // Handle notification icon press
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFFEA0A2A),
              backgroundColor: const Color(0xFFFFB8C6),
              side: const BorderSide(color: Color(0xFFEA0A2A)),
            ),
            child: const Text('Semua'),
          ),
          const SizedBox(width: 20),
          OutlinedButton(
            onPressed: () {
              // Handle notification icon press
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFFA5A2A2),
              backgroundColor: Colors.transparent,
              side: const BorderSide(color: Color(0xFFA5A2A2)),
            ),
            child: const Text('Peralatan Makanan'),
          ),
          const SizedBox(width: 20),
          OutlinedButton(
            onPressed: () {
              // Handle notification icon press
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFFA5A2A2),
              backgroundColor: Colors.transparent,
              side: const BorderSide(color: Color(0xFFA5A2A2)),
            ),
            child: const Text('Peralatan Rumah Tangga'),
          ),
          const SizedBox(width: 20),
          OutlinedButton(
            onPressed: () {
              // Handle notification icon press
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFFA5A2A2),
              backgroundColor: Colors.transparent,
              side: const BorderSide(color: Color(0xFFA5A2A2)),
            ),
            child: const Text('Buah'),
          ),
          const SizedBox(width: 20),
          OutlinedButton(
            onPressed: () {
              // Handle notification icon press
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFFA5A2A2),
              backgroundColor: Colors.transparent,
              side: const BorderSide(color: Color(0xFFA5A2A2)),
            ),
            child: const Text('Snack'),
          ),
        ],
      ),
    );
  }
}
