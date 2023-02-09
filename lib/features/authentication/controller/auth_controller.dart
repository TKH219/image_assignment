// import 'package:get/get.dart';
// import 'package:owwn_coding_challenge/core/failure.dart';
// import 'package:owwn_coding_challenge/domain/model/auth/auth_model.dart';
// import 'package:owwn_coding_challenge/domain/use_cases/auth_use_case.dart';
//
// class AuthController extends GetxController {
//   AuthUseCase authUseCase;
//
//   AuthController(this.authUseCase);
//
//   Rx<AuthModel> authModel = AuthModel(accessToken: '', refreshToken: '').obs;
//
//   Future<void> getAccessToken() async {
//     final result = await authUseCase.getAccessToken();
//     result.fold((failure) {
//       final fail = failure as ServerFailure?;
//       if (fail != null) {
//         fail.handleError();
//       }
//     }, (data) {
//       authModel.value = data;
//     });
//   }
// }
