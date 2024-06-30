part of 'get_specifi_category_cubit.dart';

@immutable
sealed class GetSpecifiCategoryState {}

final class GetSpecifiCategoryInitial extends GetSpecifiCategoryState {}

final class GetSpecifiCategoryLoading extends GetSpecifiCategoryState {}

final class GetSpecifiCategorySuccess extends GetSpecifiCategoryState {
  final List<ProductModel> products;
  GetSpecifiCategorySuccess(this.products);
}

final class GetSpecifiCategoryFailure extends GetSpecifiCategoryState {
  final String message;
  GetSpecifiCategoryFailure(this.message);
}
