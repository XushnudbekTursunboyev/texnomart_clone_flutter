
import 'package:flutter/material.dart';

import '../../data/model/hive_model/product_holder.dart';

@immutable
abstract class CardState {}

class CardInitial extends CardState {}

class GetAllProductsFromCardSate extends CardState {
  final List<ProductHolder> data;

  GetAllProductsFromCardSate(this.data);
}
