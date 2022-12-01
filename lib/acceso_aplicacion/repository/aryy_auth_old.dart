// import 'dart:async';
// import '../model/aryyUser.dart';
// import '../repository/aryy-api.dart';
// import '../../flutter_flow/flutter_flow_util.dart';

// class AryyAuth {
//   static AryyAuth get instance => _instance;
//   static final AryyAuth _instance = AryyAuth._privateConstructor();
//   // Aryy API response
//   // late bool _isUserLogged = false;
//   // late String _accessToken = "";
//   // String get AccessToken => _accessToken;

//   // simple getter for testing, it can also be Future<bool>
//   // Future<bool> get onAuthStateChanged async =>
//   //     await Future.value(_isUserLogged);

//   AryyAuth() {}
//   AryyAuth._privateConstructor() {}

//   Future<AryyUser> loginAryy() async {
//     AryyUser user = AryyUser(
//         id: 1,
//         name: "pedo",
//         lastName: 'a',
//         gender: 'b',
//         birthday: 'c',
//         countryCode: 1,
//         phoneNumber: 1,
//         email: 'd',
//         photo: 'd');

//     return user;
//   }

//   Future<ApiCallResponse?> login({String? email, String? password}) async {
//     ApiCallResponse? apiResult = await AryyApi.login(
//       email: email,
//       password: password,
//     ).then((value) {
//       if (value.succeeded) {
//         final resultado = getJsonField(value.jsonBody, r'''$[*]''').toList();
//         AryyUser user = AryyUser.fromJson(json: resultado);
//         // para pruebas temporales:
//         String accessToken = resultado[2];
//         print("accesstoken: ${accessToken}");
//         var casa = 1;
//         return resultado;
//       }
//     });
//   }

//   void logOut() {
//     print("logout")
//   }
// }
