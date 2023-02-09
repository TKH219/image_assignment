import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../data/response/response.dart';

abstract class PhotoRepository {
  Future<Either<Failure, GetListPhotosResponse>> onGetPhotos({
    String? accessToken,
    required int limit,
    required int page,
  });
}
