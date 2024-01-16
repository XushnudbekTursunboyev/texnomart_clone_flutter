part of 'product_bloc.dart';

@immutable
abstract class ProductEvent {}

class ProductInitialEvent extends ProductEvent{
  final String category;

  ProductInitialEvent(this.category);
}
