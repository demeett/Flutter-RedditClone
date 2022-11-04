import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_models.freezed.dart';
part 'user_models.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'profilePic') String? profilePic,
    @JsonKey(name: 'banner') String? banner,
    @JsonKey(name: 'uid') String? uid,
    @JsonKey(name: 'isAuthenticated') bool? isAuthenticated,
    @JsonKey(name: 'karma') int? karma,
    @JsonKey(name: 'awards') List<String>? awards,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
