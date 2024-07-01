// ignore_for_file: unused_local_variable

import 'package:e_commerce_app/manger/get_Product/get_product_cubit.dart';
import 'package:e_commerce_app/screen/All_Products.dart';
import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';

class Latest_products extends StatelessWidget {
  const Latest_products({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          "Latest Products",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        SizedBox(width: 8),
        TextButton(
          onPressed: () {
            var getProdectCubit = context.read<GetProdectCubit>().getProdect();
          },
          child: Text('go to all products'),
        ),
        Spacer(),
        Appbaricons(
          function: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 375),
                child: AllProducts(),
              ),
            );
          },
          icon: IconlyBold.arrowRight2,
        ),
      ],
    );
  }
}
