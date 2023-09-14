import 'package:booking_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
        itemCount: listProduct.length,
        itemBuilder: (context, index, realIndex) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
              image: DecorationImage(
                image: AssetImage(listProduct[index].img),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 16 / 9,
        ),
      ),
    );
  }
}
