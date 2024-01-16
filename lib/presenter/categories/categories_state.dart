part of 'categories_bloc.dart';


class CategoriesState {
  final Status? status;
  final AllCategoriesModel? allCategoriesModel;

  CategoriesState({this.status, this.allCategoriesModel});

  CategoriesState copyWith({Status? status, AllCategoriesModel? allCategoriesModel}) => CategoriesState(status: status ?? this.status, allCategoriesModel: allCategoriesModel?? this.allCategoriesModel);
}

class CategoriesInitial extends CategoriesState {}

