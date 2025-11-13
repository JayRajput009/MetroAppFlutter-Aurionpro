part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent {}

class CreateAccountEvent extends AuthenticationEvent {
  final String fullName;
  final String email;

  CreateAccountEvent({required this.fullName, required this.email});
}
