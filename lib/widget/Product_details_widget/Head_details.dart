import 'package:e_commerce_app/const/global_colors.dart';
import 'package:e_commerce_app/manger/get_Product/get_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Head_details extends StatelessWidget {
  const Head_details({
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
          ProductModel[index].title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          'rate : ${ProductModel[index].rating.rate.toString()}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 3,
              child: Text(
                ProductModel[index].title,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: RichText(
                text: TextSpan(
                  text: '\$',
                  style: const TextStyle(
                      fontSize: 25, color: Color.fromRGBO(33, 150, 243, 1)),
                  children: [
                    TextSpan(
                        text: ProductModel[index].price.toString(),
                        style: TextStyle(
                            color: lightTextColor,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 18),
      ],
    );
  }
}
