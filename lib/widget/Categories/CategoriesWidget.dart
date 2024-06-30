import 'package:e_commerce_app/const/global_colors.dart';
import 'package:e_commerce_app/manger/get_Product/get_product_cubit.dart';
import 'package:e_commerce_app/widget/app/ProdectWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Categorieswidget extends StatelessWidget {
  const Categorieswidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    var ProductModel = BlocProvider.of<GetProdectCubit>(context).productsList;
    Size size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        SizedBox(
            height: size.width * 0.45,
            width: size.width * 0.45,
            child: Build_Image(
              size: size,
              index: index,
            )),
        Align(
          alignment: Alignment.center,
          child: Text(
            ProductModel[index].category,
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
