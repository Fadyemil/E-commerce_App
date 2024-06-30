// ignore_for_file: unused_local_variable

import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce_app/manger/get_Product/get_product_cubit.dart';
// import 'package:e_commerce_app/widget/app/ProdectWidget.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class List_image extends StatelessWidget {
  const List_image({
    super.key,
    required this.size,
    required this.indexo,
  });

  final Size size;
  final int indexo;

  @override
  Widget build(BuildContext context) {
    var ProductModel = BlocProvider.of<GetProdectCubit>(context).productsList;
    return SizedBox(
      height: size.height * 0.4,
      child: Swiper(
        itemCount: 1,
        itemBuilder: (BuildContext, index) {
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
              imageUrl: ProductModel[indexo].image,
              boxFit: BoxFit.fill,
            ),
          );
        },
        autoplay: true,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            color: Colors.white,
            activeColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
