import 'package:flutter/material.dart';

import 'widget/banner_home.dart';
import 'widget/item_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            title: Text(
              "Booking App",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Icon(
                Icons.shopping_cart,
                size: 24.0,
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: BannerHome(),
          ),
        ],
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 10.0,
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Best Seller Product",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Expanded(
              child: ItemProduct(),
            )
          ],
        ),
      ),
    );
  }
}
