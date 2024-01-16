
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart_clone_flutter/data/source/local/my_hive_helper.dart';
import 'package:texnomart_clone_flutter/presenter/card/card_event.dart';
import 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc() : super(CardInitial()) {
    on<GetAllProductsFromCardEvent>((event, emit) async {
      final data = HiveHelper.getAllProductsFromBasket();
      emit(GetAllProductsFromCardSate(data));
    });
  }
}
