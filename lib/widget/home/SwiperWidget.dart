import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce_app/widget/home/sale_widget.dart';
import 'package:flutter/material.dart';

class SwiperWidget extends StatelessWidget {
  const SwiperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: 3,
      itemBuilder: (context, index) {
        return SaleWidget();
      },
      autoplay: true,
      pagination: const SwiperPagination(
        margin: EdgeInsets.all(8),
        alignment: Alignment.bottomCenter,
        builder: DotSwiperPaginationBuilder(
          color: Colors.white,
          activeColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}
