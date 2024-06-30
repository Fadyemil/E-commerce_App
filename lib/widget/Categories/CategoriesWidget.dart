import 'package:e_commerce_app/const/global_colors.dart';
import 'package:e_commerce_app/widget/app/ProdectWidget.dart';
import 'package:flutter/material.dart';

class Categorieswidget extends StatelessWidget {
  const Categorieswidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        SizedBox(
            height: size.width * 0.45,
            width: size.width * 0.45,
            child: Build_Image(
              size: size,
              index: 1,
            )),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Categ Name',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              backgroundColor: lightCardColor.withOpacity(0.5),
            ),
          ),
        )
      ],
    );
  }
}
