// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/Model/Product_Model.dart';
import 'package:e_commerce_app/manger/get_Product/get_product_state.dart';
import 'package:e_commerce_app/services/all_product_services.dart';

class GetProdectCubit extends Cubit<GetProdectState> {
  GetProdectCubit() : super(GetProdectInitial());

  late List<ProductModel> productsList = [];

  Future<List<ProductModel>> getProdect() async {
    emit(GetProductLoadingState());
    print("Loading state emitted");
    try {
      productsList = await AllProductServices().getAllProducts();
      print("Products fetched: ${productsList.length}");
      emit(GetProductSuccessState(productsList));
      print("Success state emitted");
      return productsList;
    } catch (e) {
      print("Error: $e");

      emit(GetProductFailureState(e.toString()));
      return [];
    }
  }
}
