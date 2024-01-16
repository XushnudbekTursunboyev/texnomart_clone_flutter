part of 'detail_bloc.dart';

@immutable
abstract class DetailEvent {}

class DetailInitialEvent extends DetailEvent{
  final int id;

  DetailInitialEvent(this.id);
}