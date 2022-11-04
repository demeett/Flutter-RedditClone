import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required String? id,
    required String? title,
    String? link,
    String? description, 
    required String? communityName,
    required String? communityProfilePic,
    required List<String>? upvotes,
    required List<String>? downvotes,
    required int? commentCount,
    required String? username,
    required String? uid,
    required String? type,
    required DateTime? createdAt,
    required List<String>? awards,
  }) = _Post;
  const Post._();
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
