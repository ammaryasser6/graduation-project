part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class GetVoteListLoading extends HomeState {}
final class GetVoteListSuccess extends HomeState {}
final class GetVoteListError extends HomeState {}
