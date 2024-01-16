import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:texnomart_clone_flutter/data/model/category/all_categories_model.dart';
import 'package:texnomart_clone_flutter/data/model/slider/sliders_model.dart';
import 'package:texnomart_clone_flutter/data/model/special_category/special_categories_model.dart';
import 'package:texnomart_clone_flutter/data/model/top_category/top_category_model.dart';
import 'package:texnomart_clone_flutter/data/model/top_products/top_products_model.dart';
import 'package:texnomart_clone_flutter/data/repository/app_repository.dart';
import 'package:texnomart_clone_flutter/di/di.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final repository = getIt<AppRepository>();

  MainBloc() : super(MainState()) {
    on<MainInitialEvent>((event, emit) async{
      emit(state.copyWith(status: Status.Loading));
      // try{
        final resultCategories = await repository.getAllCategories();
        final resultSliders = await repository.getSliders();
        final resultTopCategories = await repository.getTopCategories();
        final resultSpecialCategories = await repository.getSpecialCategories();
        final resultTopProducts = await repository.getTopProducts();
        emit(state.copyWith(status: Status.Success,
            allCategoriesModel: resultCategories,
            slidersModel: resultSliders,
            topCategoryModel: resultTopCategories,
            specialCategoriesModel: resultSpecialCategories,
            topProductsModel: resultTopProducts
        ));
      // }catch(e){
      //   emit(state.copyWith(status: Status.Error));
      // }
    });
  }
}
