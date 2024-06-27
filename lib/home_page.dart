import 'package:eas_ppb/components/app_bar_actions.dart';
import 'package:eas_ppb/components/box_icon.dart';
import 'package:eas_ppb/components/product_list.dart';
import 'package:eas_ppb/components/scroll_tag.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toko Saya',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        actions: const [
          AppBarActions(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/images/garden.jpg'),
              ),
            ),
            Transform.translate(
              offset: const Offset(0.0, -40.0),
              child: Container(
                width: 300.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/box.png'),
                      fit: BoxFit.cover),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [BoxIcon()],
                ),
              ),
            ),
            // Scroll kanan
            const SizedBox(
              height: 45.0,
              width: 320.0,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [ScrollTag()],
                ),
              ),
            ),
            //produk
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [ProductList()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
