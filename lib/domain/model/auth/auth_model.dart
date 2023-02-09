// import 'package:json_annotation/json_annotation.dart';
// import 'package:owwn_coding_challenge/data/entities/auth/auth_entity.dart';
//
// part 'auth_model.g.dart';
//
// @JsonSerializable()
// class AuthModel extends Object {
//   @JsonKey(name: 'access_token')
//   String accessToken;
//   @JsonKey(name: 'refresh_token')
//   String refreshToken;
//
//   AuthModel({
//     required this.accessToken,
//     required this.refreshToken,
//   });
//
//   factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);
//
//   Map<String, dynamic> toJson() => _$AuthModelToJson(this);
//
//   factory AuthModel.fromEntity(AuthEntity entity) {
//     return AuthModel(
//       accessToken: entity.accessToken,
//       refreshToken: entity.refreshToken,
//     );
//   }
// }
