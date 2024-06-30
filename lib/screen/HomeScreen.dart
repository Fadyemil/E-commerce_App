import 'package:e_commerce_app/widget/home/BarHomePAge.dart';
import 'package:e_commerce_app/widget/home/Latest_products.dart';
import 'package:e_commerce_app/widget/app/ProdectWidget.dart';
import 'package:e_commerce_app/widget/home/SearchWidget.dart';
import 'package:e_commerce_app/widget/home/SwiperWidget.dart';
import 'package:flutter/material.dart';

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
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Latest_products(),
                      ),
                      GridView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (Context, index) {
                          return const Prodectwidget();
                        },
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

