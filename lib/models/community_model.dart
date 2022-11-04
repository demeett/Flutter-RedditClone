// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_model.freezed.dart';
part 'community_model.g.dart';

@freezed
class Community with _$Community {
  const factory Community({
    required String? id,
    required String? name,
    required String? banner,
    required String? avatar,
    required List<String>? members,
    required List<String>? mods,
  }) = _Community;
  const Community._();
  factory Community.fromJson(Map<String, dynamic> json) => _$CommunityFromJson(json);
}
