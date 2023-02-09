// import 'package:dio/dio.dart';
// import 'package:owwn_coding_challenge/constants/constants.dart';
// import 'package:owwn_coding_challenge/data/entities/auth/auth_entity.dart';
// import 'package:owwn_coding_challenge/data/remote/auth_client.dart';
//
// class AuthClientImpl implements AuthClient {
//   @override
//   Future<AuthEntity> getAccessToken() async {
//     final Dio dio = Dio();
//     dio.options.headers['X-API-KEY'] = apiKey;
//     final response = await dio.post(
//       "$apiBaseUrl/hermes/auth",
//       data: {
//         "email": emailAccess,
//       },
//     );
//
//     return AuthEntity.fromJson(response.data as Map<String, dynamic>);
//   }
// }
