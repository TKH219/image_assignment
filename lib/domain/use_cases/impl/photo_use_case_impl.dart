import 'package:dartz/dartz.dart';

import '../../../core/failure.dart';
import '../../../data/response/response.dart';
import '../../repositories/photo_repository.dart';
import '../photo_use_case.dart';

class PhotoUseCaseImpl implements PhotoUseCase {

  PhotoRepository photoRepository;

  PhotoUseCaseImpl(this.photoRepository);

  @override
  Future<Either<Failure, GetListPhotosResponse>> onGetPhotos({
    String? accessToken,
    required int limit,
    required int page,
  }) async {
    final result = await photoRepository.onGetPhotos(
      accessToken: accessToken,
      page: page,
      limit: limit,
    );
    return result;
  }
}
