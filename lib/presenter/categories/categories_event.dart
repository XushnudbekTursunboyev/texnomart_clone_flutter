part of 'categories_bloc.dart';

@immutable
abstract class CategoriesEvent {}

class CategoriesInitialEvent extends CategoriesEvent{}

class CategoryWithSlug extends CategoriesEvent{
  String? slug;

  CategoryWithSlug(this.slug);
}

