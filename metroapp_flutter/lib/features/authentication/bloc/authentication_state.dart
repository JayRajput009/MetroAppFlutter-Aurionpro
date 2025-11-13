part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}

abstract class AuthenticationActionState extends AuthenticationState {}

// loading state for create account
class CreateAccountLoadingState extends AuthenticationActionState {}

// Success state for create account
class CreateAccountSuccessState extends AuthenticationActionState {}

// Failed State for create account
class CreateAccountFailedState extends AuthenticationActionState {
  final String error;

  CreateAccountFailedState({required this.error});
}
