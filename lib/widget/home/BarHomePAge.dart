import 'package:e_commerce_app/screen/CategoriesScreen.dart';
import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
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
        icon: IconlyBold.category),
    actions: [Appbaricons(function: () {}, icon: IconlyBold.user3)],
    title: Text("Home"),
  );
}
