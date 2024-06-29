// import 'package:e_commerce_app/const/global_colors.dart';
// import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
import 'package:card_swiper/card_swiper.dart';
// import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
import 'package:e_commerce_app/widget/home/BarHomePAge.dart';
import 'package:e_commerce_app/widget/home/SearchWidget.dart';
import 'package:e_commerce_app/widget/home/sale_widget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () {
        //* Unfocus any focused input field
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: BarHomePAge(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 18),
              const SearchWidget(),
              const SizedBox(height: 18),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.25,
                        child: SwiperWidget(),
                      ),
                     
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
      pagination: SwiperPagination(
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
