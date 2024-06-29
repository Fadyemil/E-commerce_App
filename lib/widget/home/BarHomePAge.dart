import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

AppBar BarHomePAge() {
  return AppBar(
    leading: Appbaricons(function: () {}, icon: IconlyBold.category),
    actions: [Appbaricons(function: () {}, icon: IconlyBold.user3)],
    title: Text("Home"),
  );
}
