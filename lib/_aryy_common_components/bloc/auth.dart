import '../model/authentication_state.dart';
import 'package:equatable/equatable.dart';

// It helps to rebuild/notify UI components in response to a state change.
// Since Equatable is part of bloc system, you can use Equatable anywhere that a bloc is required when working with thsi arch
abstract class AuthEvent extends Equatable {
  AuthEvent([List props = const []]) : super() {}
  // AuthRepository will manage all Aryy authentication options
  Authentication authentication = Authentication.uninitialized;
  @override
  // isSessionActive will be identified in broadcasted events
  List<Object> get props => [authentication];
}
