// ignore_for_file: missing_required_param

import 'package:e_commerce_app/Model/Category_Model.dart';
import 'package:e_commerce_app/helper/api.dart';

class AllCategoriesServices {
  Future<List<CategoryModel>> getCagegort(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(uri: 'https://api.escuelajs.co/api/v1/categories');

    List<CategoryModel> productsList = [];

    for (var i = 0; i < data.length; i++) {
      productsList.add(CategoryModel.fromJson(data[i]));
    }
    return productsList;
  }
}
