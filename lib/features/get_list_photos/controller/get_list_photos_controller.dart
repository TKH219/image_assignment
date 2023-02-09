import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:image_assignment/domain/use_cases/photo_use_case.dart';

import '../../../constants/constants.dart';
import '../../../core/failure.dart';
import '../../../domain/model/models.dart';

class GetListPhotosController extends GetxController {
  PhotoUseCase photoUseCase;

  String? accessToken;

  RxList<PhotoModel> listPhotosDisplay = <PhotoModel>[].obs;
  RxBool shouldDisplayAppBar = false.obs;

  int currentPage = 1;
  int totalPage = 1;

  GetListPhotosController(this.photoUseCase);

  bool get isLoadMore => currentPage <= totalPage;

  Future<void> getListPhotos() async {
    final result = await photoUseCase.onGetPhotos(
      accessToken: accessToken,
      limit: limitUser,
      page: currentPage,
    );

    result.fold((failure) {
        failure.handleError();
    }, (data) {
      final List<PhotoModel> listData = data.photos.map((element) => PhotoModel.fromEntity(element)).toList();
      listPhotosDisplay.addAll(listData);
      // final mapUser = groupBy(listData, (model) => model.status);
      // mapUser.forEach((_, value) {
      // });

      totalPage = data.totalResults;
      currentPage += 1;
      update();
    });
  }

  void updateShouldDisplayAppBar(bool shouldDisplay) {
    shouldDisplayAppBar.value = shouldDisplay;
    update();
  }

  @override
  void dispose() {
    listPhotosDisplay.close();
    super.dispose();
  }
}
