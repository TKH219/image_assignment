import 'package:dio/dio.dart';
import 'package:image_assignment/data/remote/photo_client.dart';

import '../../../constants/constants.dart';
import '../../response/response.dart';

class PhotoClientImpl implements PhotoClient {
  @override
  Future<GetListPhotosResponse> onGetPhotos({
    String? accessToken,
    required int limit,
    required int page,
  }) async {
    final Dio dio = Dio();
    // dio.options.headers['Authorization'] = accessToken ?? '';
    final response = await dio.get(
      "$apiBaseUrl/v1/search?query=nature&orientation=landscape",
      queryParameters: {
        'per_page': limit,
        'page': page,
      },
    );

    return GetListPhotosResponse.fromJson(response.data as Map<String, dynamic>);
  }
}
