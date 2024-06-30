// ignore_for_file: unused_local_variable

import 'package:e_commerce_app/manger/get_Product/get_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class desc extends StatelessWidget {
  const desc({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    var ProductModel = BlocProvider.of<GetProdectCubit>(context).productsList;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          ProductModel[index].description,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 25),
        ),
      ],
    );
  }
}
