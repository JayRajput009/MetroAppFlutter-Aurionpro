import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:metroapp_flutter/constants/api.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<CreateAccountEvent>(createAccountEvent);

    on<AuthenticationEvent>((event, emit) {});
  }

  // authentication create account event call
  FutureOr<void> createAccountEvent(
      CreateAccountEvent event, Emitter<AuthenticationState> emit) async {
    emit(CreateAccountLoadingState());
    final url =
        Uri.parse("https://api.easymetro.buildf.tech/api/v1/accounts/send-otp");

    try {
      final response = await http.post(url,
          headers: {"Content-Type": "application/json"},
          body:
              jsonEncode({"email": event.email, "full_name": event.fullName}));
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        emit(CreateAccountSuccessState());
      }
    } catch (e) {
      emit(CreateAccountFailedState(error: e.toString()));
    }
  }
}
