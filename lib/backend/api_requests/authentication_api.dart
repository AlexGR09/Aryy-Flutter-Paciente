// import 'package:aryy_front/flutter_flow/flutter_flow_util.dart';
// import 'package:dio/dio.dart';
// import 'api_manager.dart';
// export 'api_manager.dart' show ApiCallResponse;
// import 'package:logger/logger.dart';

// const _kPrivateApiFunctionName = 'ffPrivateApiCall';

// class PostRegisterCall {
//   final Logger _logger = Logger();

//   static Future<ApiCallResponse> call({
//     String? email = '',
//     String? password = '',
//     String? password_confirmation = '',
//     String? mobile = '',
//   }) async {
//     return ApiManager.instance.makeApiCall(
//       callName: 'PostRegisterCall',
//       apiUrl: 'https://app.aryymd.com/api/v1/register',
//       callType: ApiCallType.POST,
//       headers: {},
//       params: {
//         "email": email,
//         "password": password,
//         "password_confirmation": password_confirmation,
//         "mobile": mobile,
//       },
//       //_logger.i(response.data);
//       //returnBody: true,
//     );
//   }
// }
