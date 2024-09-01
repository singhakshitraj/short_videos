import 'package:equatable/equatable.dart';

abstract class LoadingEvent extends Equatable {
  const LoadingEvent();
  @override
  List<Object?> get props => [];
}

class LoadDataEvent extends LoadingEvent {}
