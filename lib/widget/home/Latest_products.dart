import 'package:e_commerce_app/screen/All_Products.dart';
import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';

class Latest_products extends StatelessWidget {
  const Latest_products({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Latest Products",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
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
