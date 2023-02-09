import 'package:get/get.dart';
import 'package:image_assignment/domain/use_cases/photo_use_case.dart';

import '../../../constants/constants.dart';
import '../../../domain/model/models.dart';

class GetListPhotosController extends GetxController {
  PhotoUseCase photoUseCase;

  GetListPhotosController(this.photoUseCase);

  RxList<PhotoModel> listPhotosDisplay = <PhotoModel>[].obs;

  int currentPage = 1;
  int totalPage = 1;

  bool get isLoadMore => currentPage <= totalPage;

  Future<void> getListPhotos() async {
    final result = await photoUseCase.onGetPhotos(
      limit: limitUser,
      page: currentPage,
    );

    result.fold((failure) {
      failure.handleError();
    }, (data) {
      final List<PhotoModel> listData = data.photos.map((element) => PhotoModel.fromEntity(element)).toList();
      listPhotosDisplay.addAll(listData);
      totalPage = data.totalResults;
      currentPage += 1;
      update();
    });
  }

  @override
  void dispose() {
    listPhotosDisplay.close();
    super.dispose();
  }
}
