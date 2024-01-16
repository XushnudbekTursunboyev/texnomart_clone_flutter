import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart_clone_flutter/data/model/producs_popular_category/products_popular_category.dart';
import 'package:texnomart_clone_flutter/data/repository/app_repository.dart';
import 'package:texnomart_clone_flutter/di/di.dart';
import 'package:texnomart_clone_flutter/presenter/main/main_bloc.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final repository = getIt<AppRepository>();

  ProductBloc() : super(ProductState()) {
    on<ProductInitialEvent>((event, emit) async{
      emit(state.copyWith(status: Status.Loading));
     try{
      final resultProducts = await repository.getProducts(event.category);
      print('worked bloc: ${resultProducts}');
      emit(state.copyWith(status: Status.Success, productItemsModel: resultProducts,));
      }catch(e){
        emit(state.copyWith(status: Status.Error));
      }
    });
  }
}
