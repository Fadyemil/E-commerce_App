import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

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
          function: () {},
          icon: IconlyBold.arrowRight2,
        ),
      ],
    );
  }
}