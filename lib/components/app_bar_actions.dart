import 'package:flutter/material.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Handle notification icon press
          },
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            // Handle shopping cart icon press
          },
        ),
      ],
    );
  }
}
