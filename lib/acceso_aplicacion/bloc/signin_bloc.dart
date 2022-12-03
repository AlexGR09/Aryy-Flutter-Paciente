import 'dart:async';
import 'package:bloc/bloc.dart';
import '../../_aryy_common_components/bloc/auth.dart';
import '../../_aryy_common_components/model/authentication.dart';
import '../repository/aryy_auth_repository.dart';
import '../repository/aryy_auth.dart';
part './signin_event.dart';

// Nota: De acuerdo a la doña del video, el flujo de datos se maneja similar a React

// Any state will be received with status<int>
class SigninBloc extends Bloc<AuthEvent, Authentication> {
  // SigninBloc's inital state by default will be set as false (ie. new user opens the app)
  // ex: Firebase.onAuthStateChanged; Future<dataType>
  SigninBloc() : super(Authentication.uninitialized) {
    // Handle incoming <AuthEvents> streams. emit: broadcast new state
    on<AuthEvent>((event, emit) async {
      // Then, broadcast a new state from the event received
      // The argument type 'Stream<bool>' can't be assigned to the parameter type 'bool'.
      emit(await AryyAuth.instance.onAuthStateChanged);
    });
  }
}
