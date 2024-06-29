// import 'package:e_commerce_app/const/global_colors.dart';
// import 'package:e_commerce_app/widget/app/AppBarIcons.dart';
import 'package:e_commerce_app/widget/home/BarHomePAge.dart';
import 'package:e_commerce_app/widget/home/SearchWidget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';

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
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 18),
              SearchWidget(),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
