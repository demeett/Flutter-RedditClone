import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_tutorial/models/comment_model.dart';

class CommentCard extends ConsumerWidget {
  final Comment comment;
  const CommentCard({super.key, required this.comment});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  comment.profilePic ?? "",
                ),
                radius: 18,
              ),
              Expanded(
                  child: Column(
                children: [
                  CommonText(comment: 'u/${comment.userName}'),
                  CommonText(comment: comment.text.toString()),
                ],
              ))
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.reply)),
              const Text("Reply"),
            ],
          )
        ],
      ),
    );
  }
}

class CommonText extends StatelessWidget {
  const CommonText({
    Key? key,
    required this.comment,
  }) : super(key: key);

  final String comment;

  @override
  Widget build(BuildContext context) {
    return Text(
      comment,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
