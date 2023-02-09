import 'package:json_annotation/json_annotation.dart';

import '../entity.dart';

part 'photo_entity.g.dart';

@JsonSerializable()
class PhotoEntity extends Object {
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

  PhotoEntity({
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

  factory PhotoEntity.fromJson(Map<String, dynamic> json) => _$PhotoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoEntityToJson(this);
}
