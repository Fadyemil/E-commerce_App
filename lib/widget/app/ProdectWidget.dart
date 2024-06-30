// ignore_for_file: non_constant_identifier_names, unused_local_variable

// import 'dart:js_interop_unsafe';

import 'package:e_commerce_app/const/global_colors.dart';
import 'package:e_commerce_app/manger/get_Product/get_product_cubit.dart';
import 'package:e_commerce_app/screen/Product_Details.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';

class Prodectwidget extends StatelessWidget {
  const Prodectwidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    var ProdectModel = BlocProvider.of<GetProdectCubit>(context).productsList;
    Size size = MediaQuery.sizeOf(context);
    return Material(
      borderRadius: BorderRadius.circular(8.0),
      color: Theme.of(context).cardColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: () {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.fade,
              duration: Duration(milliseconds: 375),
              child: ProductDetails(index: index,),
            ),
          );
        },
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: headCart(
                index: index,
              ),
            ),
            const SizedBox(height: 10),
            Build_Image(
              size: size,
              index: index,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                ProdectModel[index].title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );
  }
}

class Build_Image extends StatelessWidget {
  const Build_Image({
    super.key,
    required this.size,
    required this.index,
  });

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
    var ProdectModel = BlocProvider.of<GetProdectCubit>(context).productsList;
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: FancyShimmerImage(
        height: size.height * 0.2,
        width: double.infinity,
        //! Displaying a danger icon in red color with a size of 28 pixels if there's an error loading the image
        errorWidget: Icon(
          IconlyBold.danger,
          color: Colors.red,
          size: 28,
        ),
        imageUrl: ProdectModel[index].image,
        boxFit: BoxFit.fill,
      ),
    );
  }
}

class headCart extends StatelessWidget {
  const headCart({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    var ProdectModel = BlocProvider.of<GetProdectCubit>(context).productsList;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: RichText(
            text: TextSpan(
              text: '\$',
              style: TextStyle(
                color: Color.fromRGBO(33, 150, 243, 1),
              ),
              children: [
                TextSpan(
                  text: ProdectModel[index].price.toString(),
                  style: TextStyle(
                    color: lightTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // TextSpan(
                //   text: '.',
                //   style: TextStyle(
                //     color: Colors.indigo,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
                // TextSpan(
                //   text: '45',
                //   style: TextStyle(
                //     color: lightTextColor,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Icon(IconlyBold.heart)
      ],
    );
  }
}
