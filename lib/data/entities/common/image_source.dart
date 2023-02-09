import 'package:json_annotation/json_annotation.dart';

part 'image_source.g.dart';

@JsonSerializable()
class ImageSource extends Object {
  @JsonKey(name: 'original')
  String original;
  @JsonKey(name: 'large2x')
  String large2x;
  @JsonKey(name: 'large')
  String large;
  @JsonKey(name: 'medium')
  String medium;
  @JsonKey(name: 'small')
  String small;
  @JsonKey(name: 'portrait')
  String portrait;
  @JsonKey(name: 'landscape')
  String landscape;
  @JsonKey(name: 'tiny')
  String tiny;

  ImageSource({
    required this.original,
    required this.large2x,
    required this.large,
    required this.medium,
    required this.small,
    required this.portrait,
    required this.landscape,
    required this.tiny,
  });

  factory ImageSource.fromJson(Map<String, dynamic> json) => _$ImageSourceFromJson(json);

  Map<String, dynamic> toJson() => _$ImageSourceToJson(this);
}