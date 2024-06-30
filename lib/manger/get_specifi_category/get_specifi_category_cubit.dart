// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/Model/Product_Model.dart';
import 'package:e_commerce_app/services/Get_products_Sp_category.dart';
import 'package:meta/meta.dart';

part 'get_specifi_category_state.dart';

class GetSpecifiCategoryCubit extends Cubit<GetSpecifiCategoryState> {
  GetSpecifiCategoryCubit() : super(GetSpecifiCategoryInitial());

  late List<ProductModel> get_specifi_category = [];

  Future<List<ProductModel>> getProduct_specifi_category(
      {required String CategoryName}) async {
    emit(GetSpecifiCategoryLoading());
    print("Loading state emitted");
    try {
      get_specifi_category = await GetProductsInSpecificCategory_services()
          .getAllProducts_Spe_Categoryy(CategoryName: CategoryName);
      print("Products fetched: ${get_specifi_category.length}");
      emit(GetSpecifiCategorySuccess(get_specifi_category));
      print("Success state emitted");
      return get_specifi_category;
    } catch (e) {
      print("Error: $e");

      emit(GetSpecifiCategoryFailure(e.toString()));
      return [];
    }
  }
}
