import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart_clone_flutter/data/model/product_detail/product_detail_model.dart';
import 'package:texnomart_clone_flutter/data/repository/app_repository.dart';
import 'package:texnomart_clone_flutter/di/di.dart';
import 'package:texnomart_clone_flutter/presenter/main/main_bloc.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final repository = getIt<AppRepository>();

  DetailBloc() : super(DetailState()) {
    on<DetailInitialEvent>((event, emit) async{
      emit(state.copyWith(status: Status.Loading));
      try{
        final resultProductDetail = await repository.getProductDetailByID(event.id);
        print('worked bloc: ${resultProductDetail}');
        emit(state.copyWith(status: Status.Success, productDetailModel: resultProductDetail));
      }catch(e){
        emit(state.copyWith(status: Status.Error));
      }
    });
  }
}
