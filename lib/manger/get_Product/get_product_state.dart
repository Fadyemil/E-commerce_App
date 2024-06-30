import 'package:e_commerce_app/Model/Product_Model.dart';

abstract class GetProdectState {}

class GetProdectInitial extends GetProdectState {}

class GetProductLoadingState extends GetProdectState {}

class GetProductSuccessState extends GetProdectState {
  final List<ProductModel> products;
  GetProductSuccessState(this.products);
}

class GetProductFailureState extends GetProdectState {
  final String error;
  GetProductFailureState(this.error);
}
