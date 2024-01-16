part of 'product_bloc.dart';

class ProductState {
  final Status? status;
  final ProductsPopularCategory? productsItemModel;

  ProductState({this.status, this.productsItemModel});

  ProductState copyWith({
    Status? status,
    ProductsPopularCategory? productItemsModel}) =>
      ProductState(
          status: status ?? this.status,
          productsItemModel: productItemsModel ?? this.productsItemModel) ;
}

class ProductInitial extends ProductState {}
