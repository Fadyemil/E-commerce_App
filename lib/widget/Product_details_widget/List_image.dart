import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce_app/widget/app/ProdectWidget.dart';
import 'package:flutter/material.dart';

class List_image extends StatelessWidget {
  const List_image({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.4,
      child: Swiper(
        itemCount: 3,
        itemBuilder: (BuildContext, index) {
          return Build_Image(size: size);
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
