// import 'package:e_commerce_app/screen/CategoriesScreen.dart';
// import 'package:e_commerce_app/manger/get_Product/get_product_cubit.dart';
import 'package:e_commerce_app/screen/CategoriesScreen.dart';
import 'package:e_commerce_app/screen/User_screen.dart';
import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
// import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';

AppBar BarHomePAge(BuildContext context) {
  return AppBar(
    scrolledUnderElevation: 0,
    elevation: 0,
    leading: Appbaricons(
        function: () {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.fade,
              duration: Duration(milliseconds: 375),
              child: Categoriesscreen(),
            ),
          );
        },
        //  function: (){
        //   var getProdectCubit = BlocProvider.of<GetProdectCubit>(context);
        //   getProdectCubit.getProdect();
        //  }
        icon: IconlyBold.category),
    actions: [
      Appbaricons(
          function: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 375),
                child: UserScreen(),
              ),
            );
          },
          icon: IconlyBold.user3)
    ],
    title: Text("Home"),
  );
}
