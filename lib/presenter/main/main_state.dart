part of 'main_bloc.dart';

class MainState {
  final Status? status;
  final AllCategoriesModel? categoriesModel;
  final SlidersModel? slidersModel;
  final TopCategoryModel? topCategoryModel;
  final SpecialCategoriesModel? specialCategoriesModel;
  final TopProductsModel? topProductsModel;

  MainState({this.status, this.categoriesModel, this.slidersModel, this.topCategoryModel, this.specialCategoriesModel, this.topProductsModel});

  MainState copyWith({Status? status, AllCategoriesModel? allCategoriesModel, SlidersModel? slidersModel, TopCategoryModel? topCategoryModel, SpecialCategoriesModel? specialCategoriesModel, TopProductsModel? topProductsModel})
  => MainState(status: status ?? this.status,
      categoriesModel: allCategoriesModel ?? this.categoriesModel,
      slidersModel: slidersModel ?? this.slidersModel,
      topCategoryModel: topCategoryModel ?? this.topCategoryModel,
      specialCategoriesModel: specialCategoriesModel ?? this.specialCategoriesModel,
      topProductsModel: topProductsModel ?? this.topProductsModel
  );
}

class MainInitial extends MainState {}

enum Status { Loading, Success, Error, Initial }
