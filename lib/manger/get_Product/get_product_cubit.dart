// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/Model/Product_Model.dart';
import 'package:e_commerce_app/services/all_product_services.dart';
// import 'package:meta/meta.dart';

part 'get_product_state.dart';

class GetProdectCubit extends Cubit<GetProdectState> {
  GetProdectCubit() : super(GetProdectInitial());

  late ProductModel productModel;

   GetProdect() async {
    try {
      productModel =
          (await AllProductServices().getAllProducts()) as ProductModel;
      print(productModel);
      emit(GetProductLoadingState());
    } catch (e) {
      emit(GetProductFailureState(e.toString()));
    }
  }
}
