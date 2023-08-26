import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:elastico/app/core/components/app_icons_icons.dart';
import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_appbar.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProductAppBar(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.1,
            child: Container(
              width: double.infinity,
              // color: Color(0xffEAEEEF),
              color: Colors.amber,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  aspectRatio: 1,
                  initialPage: 0,
                  autoPlay: true,
                ),
                itemCount: 1,
                itemBuilder: (context, index, realIndex) {
                  return Image.network(
                      'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/79792eebdc93491ca4cb54dd0df1e469_9366/Real_Madrid_23-24_Away_Jersey_Kids_Blue_IB0000_01_laydown.jpg');
                },
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
