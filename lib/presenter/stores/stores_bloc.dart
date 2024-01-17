import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart_clone_flutter/data/model/stores/stores_model.dart';
import 'package:texnomart_clone_flutter/data/repository/app_repository.dart';
import 'package:texnomart_clone_flutter/di/di.dart';
import 'package:texnomart_clone_flutter/presenter/main/main_bloc.dart';

part 'stores_event.dart';
part 'stores_state.dart';

class StoresBloc extends Bloc<StoresEvent, StoresState> {
  final repository = getIt<AppRepository>();

  StoresBloc() : super(StoresState()) {
    on<StoresInitialEvent>((event, emit) async{
      emit(state.copyWith(status: Status.Loading));
      try{
        final resultStores= await repository.getStores();
        emit(state.copyWith(status: Status.Success, storesModel: resultStores,));
      }catch(e){
        emit(state.copyWith(status: Status.Error));
      }
    });
  }
}
