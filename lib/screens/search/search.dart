import 'package:booking_app/screens/home/widget/item_product.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            padding: const EdgeInsets.symmetric(
              vertical: 6.0,
              horizontal: 12.0,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    initialValue: null,
                    decoration: InputDecoration.collapsed(
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: "Search Product?",
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                      ),
                      hoverColor: Colors.transparent,
                    ),
                    onFieldSubmitted: (value) {},
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ItemProduct(),
          )
        ],
      ),
    );
  }
}
