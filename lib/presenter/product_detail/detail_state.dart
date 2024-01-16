part of 'detail_bloc.dart';

class DetailState {
  final Status? status;
  final ProductDetailModel? productDetailModel;

  DetailState({this.status, this.productDetailModel});

  DetailState copyWith({Status? status, ProductDetailModel? productDetailModel}) =>
      DetailState(status: status ?? this.status, productDetailModel: productDetailModel ?? this.productDetailModel);
}

class DetailInitial extends DetailState {}
