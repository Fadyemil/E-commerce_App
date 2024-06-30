// import 'package:card_swiper/card_swiper.dart';
// import 'package:e_commerce_app/const/global_colors.dart';
import 'package:e_commerce_app/widget/Product_details/Head_details.dart';
import 'package:e_commerce_app/widget/Product_details/List_image.dart';
import 'package:e_commerce_app/widget/Product_details/desc.dart';
// import 'package:e_commerce_app/widget/app/ProdectWidget.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
            const BackButton(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Head_details(),
            ),
            List_image(size: size),
            const SizedBox(height: 18),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: desc(),
            )
          ],
        ),
      ),
    );
  }
}



