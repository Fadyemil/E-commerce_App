import 'package:e_commerce_app/widget/Categories/CategoriesWidget.dart';
import 'package:flutter/material.dart';

class Categoriesscreen extends StatelessWidget {
  const Categoriesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        scrolledUnderElevation: 0,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            childAspectRatio: 0.7,
            mainAxisExtent: 210,
          ),
          itemBuilder: (Context, index) {
            return const Categorieswidget();
          },
        ),
      ),
    );
  }
}
