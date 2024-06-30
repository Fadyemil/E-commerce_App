// import 'package:card_swiper/card_swiper.dart';
// import 'package:e_commerce_app/const/global_colors.dart';
import 'package:e_commerce_app/widget/Product_details_widget/Head_details.dart';
import 'package:e_commerce_app/widget/Product_details_widget/List_image.dart';
import 'package:e_commerce_app/widget/Product_details_widget/desc.dart';
// import 'package:e_commerce_app/widget/app/ProdectWidget.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.index});
  final int index;

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
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Head_details(index: index,),
            ),
            List_image(size: size, indexo: index,),
            const SizedBox(height: 18),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: desc(index: index,),
            )
          ],
        ),
      ),
    );
  }
}
