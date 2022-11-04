import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_tutorial/features/auth/controller/auth_controller.dart';
import 'package:reddit_tutorial/features/post/controller/post_controller.dart';
import 'package:reddit_tutorial/theme/palette.dart';

import '../../models/post_model.dart';

class PostCard extends ConsumerWidget {
  final Post post;
  const PostCard({super.key, required this.post});
  void deletePost(WidgetRef ref, BuildContext context) async {
    ref.read(postControllerProvider.notifier).deletePost(post, context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isTypeImage = post.type == 'image';
    final isTypeText = post.type == 'text';
    final isTypeLink = post.type == 'link';
    final currentTheme = ref.watch(themeNotifierProvider);
    final user = ref.watch(userProvider)!;
    return Column(children: [
      Container(
        decoration: BoxDecoration(color: currentTheme.drawerTheme.backgroundColor),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 16,
                    ).copyWith(
                      right: 0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    post.communityProfilePic ?? "https://picsum.photos/200/300",
                                  ),
                                  radius: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'r/${post.communityName ?? ""}',
                                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'u/${post.username ?? ""}',
                                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (post.uid == user.uid)
                              IconButton(
                                  onPressed: () {
                                    return deletePost(ref, context);
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Pallete.redColor,
                                  ))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            post.title ?? "",
                            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                        ),
                        if (isTypeImage)
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.35,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18),
                              child: Image.network(
                                post.link ?? "https://picsum.photos/200/300",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        if (isTypeLink)
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18),
                              child: AnyLinkPreview(
                                link: "https://vardaan.app/",
                                displayDirection: UIDirection.uiDirectionHorizontal,
                              )),
                        if (isTypeText)
                          Container(
                            //alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                post.description ?? "",
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.comment,
                                  ),
                                ),
                                Text(
                                  '${post.commentCount == 0 ? 'Comment' : post.commentCount}',
                                  style: const TextStyle(fontSize: 17),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
