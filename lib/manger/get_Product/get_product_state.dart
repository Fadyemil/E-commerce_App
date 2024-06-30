part of 'get_product_cubit.dart';

sealed class GetProdectState {}

final class GetProdectInitial extends GetProdectState {}

final class GetProductLoadingState extends GetProdectState {}

final class GetProductFailureState extends GetProdectState {
  final String errorMessage;
  GetProductFailureState(this.errorMessage);
}
