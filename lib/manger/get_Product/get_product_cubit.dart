// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/Model/Product_Model.dart';
import 'package:e_commerce_app/manger/get_Product/get_product_state.dart';
import 'package:e_commerce_app/services/AddProdectServices.dart';
import 'package:e_commerce_app/services/Get_products_Sp_category.dart';
import 'package:e_commerce_app/services/all_product_services.dart';

class GetProdectCubit extends Cubit<GetProdectState> {
  GetProdectCubit() : super(GetProdectInitial());

  late List<ProductModel> productsList = [];
  late ProductModel product;

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

  Future<List<ProductModel>> getProduct_specifi_category(
      {required String CategoryName}) async {
    emit(GetProductLoadingState());
    print("Loading state emitted");
    try {
      productsList = await GetProductsInSpecificCategory_services()
          .getAllProducts_Spe_Categoryy(CategoryName: CategoryName);
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

  Future<List<ProductModel>> Add_Product(
      {required String title,
      required dynamic price,
      required String description,
      required String image,
      required String category}) async {
    emit(GetProductLoadingState());
    print("Loading state emitted");
    try {
      product = await AddProdectServices().addProduct(
        title: title,
        price: price,
        description: description,
        image: image,
        category: category,
      );
      print("Products fetched: ${productsList.length}");
      emit(GetProducttate(product, productsList));
      print("Success state emitted");
      productsList.add(product);
      print("Products fetched: ${productsList.length}");
      return productsList;
    } catch (e) {
      print("Error: $e");

      emit(GetProductFailureState(e.toString()));
      return [];
    }
  }
}
