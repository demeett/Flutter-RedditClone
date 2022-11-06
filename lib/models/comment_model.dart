import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required String? id,
    required String? text,
    required DateTime? createdAt,
    required String? postId,
    required String? userName,
    required String? profilePic,
  }) = _Comment;
  const Comment._();
  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}
