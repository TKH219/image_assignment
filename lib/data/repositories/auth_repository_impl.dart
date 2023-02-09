// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:owwn_coding_challenge/core/failure.dart';
// import 'package:owwn_coding_challenge/data/remote/auth_client.dart';
// import 'package:owwn_coding_challenge/domain/model/auth/auth_model.dart';
// import 'package:owwn_coding_challenge/domain/repositories/auth_repository.dart';
//
// class AuthRepositoryImpl implements AuthRepository {
//   AuthClient authClient;
//
//   AuthRepositoryImpl(this.authClient);
//
//   @override
//   Future<Either<Failure, AuthModel>> getAccessToken() async {
//     try {
//       final result = await authClient.getAccessToken();
//       return Right(AuthModel.fromEntity(result));
//     } catch (e) {
//       return Left(ServerFailure(e as DioError));
//     }
//   }
// }
