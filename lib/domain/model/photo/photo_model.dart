import 'package:json_annotation/json_annotation.dart';
import '../../../data/entities/entity.dart';

part 'photo_model.g.dart';

@JsonSerializable()
class PhotoModel extends Object {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'width')
  int width;
  @JsonKey(name: 'height')
  int height;
  @JsonKey(name: 'url')
  String url;
  @JsonKey(name: 'photographer')
  String photographer;
  @JsonKey(name: 'photographer_url')
  String photographerUrl;
  @JsonKey(name: 'photographer_id')
  int photographerId;
  @JsonKey(name: 'avg_color')
  String avgColor;
  @JsonKey(name: 'liked')
  bool? liked;
  @JsonKey(name: 'src')
  ImageSource imageSource;

  PhotoModel({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    required this.photographer,
    required this.photographerUrl,
    required this.photographerId,
    required this.avgColor,
    required this.imageSource,
    this.liked,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) => _$PhotoModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoModelToJson(this);

  factory PhotoModel.fromEntity(PhotoEntity entity) {
    return PhotoModel(
      id: entity.id,
      width: entity.width,
      height: entity.height,
      url: entity.url,
      photographer: entity.photographer,
      photographerUrl: entity.photographerUrl,
      photographerId: entity.photographerId,
      avgColor: entity.avgColor,
      imageSource: entity.imageSource,
      liked: entity.liked,
    );
  }
}
