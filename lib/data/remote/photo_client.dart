
import 'package:image_assignment/data/response/get_list_photos_response.dart';

abstract class PhotoClient {
  Future<GetListPhotosResponse> onGetPhotos({
    String? accessToken,
    required int limit,
    required int page,
  });
}
