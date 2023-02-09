import 'package:json_annotation/json_annotation.dart';

part 'auth_entity.g.dart';

@JsonSerializable()
class AuthEntity extends Object {
  @JsonKey(name: 'access_token')
  String accessToken;
  @JsonKey(name: 'refresh_token')
  String refreshToken;

  AuthEntity({
    required this.accessToken,
    required this.refreshToken,
  });

  factory AuthEntity.fromJson(Map<String, dynamic> json) => _$AuthEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AuthEntityToJson(this);
}
