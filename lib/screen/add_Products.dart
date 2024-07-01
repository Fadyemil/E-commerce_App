// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:e_commerce_app/manger/get_Product/get_product_cubit.dart';
import 'package:e_commerce_app/widget/Add_Product_widget/custom_button.dart';
import 'package:e_commerce_app/widget/Add_Product_widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProducts extends StatelessWidget {
  AddProducts({super.key});

  dynamic Prodect_Name, desc, image, price, category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('add products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              // CustomTextField(
              //   onChanged: (data) {
              //     // Prodect_Name = data;
              //   },
              //   hintText: 'ID',
              // ),
              SizedBox(height: 8),
              CustomTextField(
                onChanged: (data) {
                  Prodect_Name = data;
                },
                hintText: 'Prodect Name',
              ),
              SizedBox(height: 8),
              CustomTextField(
                onChanged: (data) {
                  desc = data;
                },
                hintText: 'description',
              ),
              SizedBox(height: 8),
              CustomTextField(
                textInputType: TextInputType.number,
                onChanged: (data) {
                  price = data;
                },
                hintText: 'Prodect price',
              ),
              SizedBox(height: 8),
              CustomTextField(
                onChanged: (data) {
                  image = data;
                },
                hintText: 'image',
              ),
              SizedBox(height: 8),
              CustomTextField(
                onChanged: (data) {
                  category = data;
                },
                hintText: 'category',
              ),
              SizedBox(height: 50),
              CustomButon(
                text: 'Add ',
                onTap: () async {
                  var getadd = context.read<GetProdectCubit>().Add_Product(
                        title: Prodect_Name,
                        price: price,
                        description: desc,
                        image: image,
                        category: category,
                      );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
