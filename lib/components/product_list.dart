import 'package:eas_ppb/components/product_1.dart';
import 'package:eas_ppb/components/product_2.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Product1(),
        SizedBox(
          height: 20,
        ),
        Product2(),
        SizedBox(
          height: 20,
        ),
        Product1(),
        SizedBox(
          height: 20,
        ),
        Product2(),
        SizedBox(
          height: 20,
        ),
        Product1(),
        SizedBox(
          height: 20,
        ),
        Product2(),
      ],
    );
  }
}
