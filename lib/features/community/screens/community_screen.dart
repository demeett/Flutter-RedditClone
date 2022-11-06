import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_tutorial/core/common/loader.dart';
import 'package:reddit_tutorial/features/auth/controller/auth_controller.dart';
import 'package:reddit_tutorial/features/community/controller/community_controller.dart';
import 'package:routemaster/routemaster.dart';

import '../../../core/common/error_text.dart';
import '../../../core/common/post_card.dart';
import '../../../models/community_model.dart';

class CommunityScreen extends ConsumerWidget {
  const CommunityScreen({super.key, required this.name});
  final String name;
  void navigateToMoods(BuildContext context) {
    Routemaster.of(context).push('/mod-tools/$name');
  }

  void joinCommunity(WidgetRef ref, Community community, BuildContext context) {
    ref.read(communityControllerProvider.notifier).joinCommunity(community, context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider)!;
    return Scaffold(
      body: ref.watch(getCommunityByNameProvider(name)).when(
          data: (community) {
            return NestedScrollView(
              headerSliverBuilder: (context, innerBoxScrolled) {
                return [
                  SliverAppBar(
                    floating: true,
                    snap: true,
                    expandedHeight: 150,
                    flexibleSpace: Stack(children: [
                      Positioned.fill(
                        child: Image.network(
                          community.banner ?? "",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ]),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                        delegate: SliverChildListDelegate([
                      Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(community.avatar ?? ""),
                          radius: 35,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'r/${community.name}',
                            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          (community.mods?.contains(user.uid) ?? false)
                              ? OutlinedButton(
                                  onPressed: () {
                                    navigateToMoods(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(horizontal: 25),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                                  child: const Text("Mod Tools"),
                                )
                              : OutlinedButton(
                                  onPressed: () {
                                    joinCommunity(ref, community, context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(horizontal: 25),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                                  child: Text((community.members?.contains(user.uid) ?? false) ? "Joined" : "Join"),
                                )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("${community.members?.length ?? 0} members"),
                      )
                    ])),
                  )
                ];
              },
              body: ref.watch(getCommunityPostsProvider(name)).when(
                    data: (data) {
                      return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          final post = data[index];
                          return PostCard(post: post);
                        },
                      );
                    },
                    error: (error, stackTrace) {
                      return ErrorText(error: error.toString());
                    },
                    loading: () => const Loader(),
                  ),
            );
          },
          error: (error, stackTrace) => ErrorText(error: error.toString()),
          loading: () => const Loader()),
    );
  }
}
