import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //* Unfocus any focused input field
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: BarHomePAge(),
      ),
    );
  }
}

AppBar BarHomePAge() {
  return AppBar(
    leading: Appbaricons(function: () {}, icon: IconlyBold.category),
    actions: [Appbaricons(function: () {}, icon: IconlyBold.user3)],
    title: Text("Home"),
  );
}
