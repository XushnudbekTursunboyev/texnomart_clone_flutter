import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart_clone_flutter/data/model/category/all_categories_model.dart';
import 'package:texnomart_clone_flutter/data/repository/app_repository.dart';
import 'package:texnomart_clone_flutter/di/di.dart';
import 'package:texnomart_clone_flutter/presenter/main/main_bloc.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final repository = getIt<AppRepository>();


  CategoriesBloc() : super(CategoriesState()) {
    on<CategoriesInitialEvent>((event, emit) async{
      emit(state.copyWith(status: Status.Loading));
      // try{
      final resultCategories = await repository.getAllCategories();
      emit(state.copyWith(status: Status.Success,
          allCategoriesModel: resultCategories,
      ));
      // }catch(e){
      //   emit(state.copyWith(status: Status.Error));
      // }
    });
  }
}
