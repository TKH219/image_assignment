import 'package:image_assignment/data/entities/entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_list_photos_response.g.dart';

@JsonSerializable()
class GetListPhotosResponse extends Object {
  @JsonKey(name: 'photos')
  List<PhotoEntity> photos;
  @JsonKey(name: 'per_page')
  int perPage;
  @JsonKey(name: 'page')
  int page;
  @JsonKey(name: 'total_results')
  int totalResults;

  GetListPhotosResponse({
    required this.photos,
    required this.perPage,
    required this.page,
    required this.totalResults,
  });

  factory GetListPhotosResponse.fromJson(Map<String, dynamic> json) => _$GetListPhotosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetListPhotosResponseToJson(this);
}
