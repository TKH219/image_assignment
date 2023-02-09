import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:image_assignment/data/remote/photo_client.dart';
import '../../core/failure.dart';
import '../../domain/repositories/photo_repository.dart';
import '../response/response.dart';

class PhotoRepositoryImpl extends PhotoRepository {
  PhotoClient photoClient;

  PhotoRepositoryImpl(this.photoClient);

  @override
  Future<Either<Failure, GetListPhotosResponse>> onGetPhotos({
    String? accessToken,
    required int limit,
    required int page,
  }) async {
    try {
      final GetListPhotosResponse response = await photoClient.onGetPhotos(
        accessToken: accessToken,
        limit: limit,
        page: page,
      );

      return Right(response);
    } catch (error) {
      if (error is DioError) {
        return Left(ServerFailure(error));
      } else {
        return Left(GeneralFailure(error));
      }
    }
  }
}
