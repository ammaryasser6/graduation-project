part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}
final class Registerloading extends RegisterState {}
final class Registersuccess extends RegisterState {}
final class Registererror extends RegisterState {final String message;
Registererror(this.message);
}


