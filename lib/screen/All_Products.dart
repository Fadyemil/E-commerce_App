// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:e_commerce_app/manger/get_Product/get_product_cubit.dart';
import 'package:e_commerce_app/screen/add_Products.dart';
import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
import 'package:e_commerce_app/widget/app/ProdectWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    var ProductModel = BlocProvider.of<GetProdectCubit>(context).productsList;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        title: Text('all products'),
        actions: [
          Appbaricons(
            function: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  duration: Duration(milliseconds: 375),
                  child: AddProducts(),
                ),
              );
            },
            icon: IconlyBold.plus,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
          itemCount: ProductModel.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (Context, index) {
            return Prodectwidget(
              index: index,
            );
          },
        ),
      ),
    );
  }
}
