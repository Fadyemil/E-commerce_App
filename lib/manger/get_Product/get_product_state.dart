import 'package:e_commerce_app/Model/Product_Model.dart';

abstract class GetProdectState {}

class GetProdectInitial extends GetProdectState {}

class GetProductLoadingState extends GetProdectState {}

class GetProductSuccessState extends GetProdectState {
  final List<ProductModel> products;
  GetProductSuccessState(this.products);
}

class GetProducttate extends GetProdectState {
  final ProductModel products;
  final List<ProductModel> ProductList;
  GetProducttate(this.products, this.ProductList);
}

class GetProductFailureState extends GetProdectState {
  final String error;
  GetProductFailureState(this.error);
}
