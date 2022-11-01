import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_tutorial/core/common/error_text.dart';
import 'package:reddit_tutorial/core/common/loader.dart';
import 'package:reddit_tutorial/features/auth/controller/auth_controller.dart';
import 'package:reddit_tutorial/features/community/controller/community_controller.dart';

class AddModsScreen extends ConsumerStatefulWidget {
  final String name;
  const AddModsScreen({super.key, required this.name});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddModsScreenState();
}

class _AddModsScreenState extends ConsumerState<AddModsScreen> {
  void addUid(String uid) {
    setState(() {
      uids.add(uid);
    });
  }

  void removeUid(String uid) {
    setState(() {
      uids.remove(uid);
    });
  }

  void saveMods() {
    ref.read(communityControllerProvider.notifier).addMods(
          widget.name,
          uids.toList(),
          context,
        );
  }

  Set<String> uids = {};
  int ctr = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                saveMods();
              },
              icon: const Icon(Icons.done))
        ],
      ),
      body: ref.watch(getCommunityByNameProvider(widget.name)).when(
          data: (community) {
            return ListView.builder(
                itemCount: community.members?.length,
                itemBuilder: (BuildContext context, int index) {
                  final member = community.members?[index];
                  return ref.watch(getUserDataProvider(member.toString())).when(
                      data: (user) {
                        if ((community.mods?.contains(member) ?? false) && ctr == 0) {
                          uids.add(member!);
                        }
                        ctr++;
                        return CheckboxListTile(
                          value: uids.contains(user.uid),
                          onChanged: (val) {
                            if (val!) {
                              addUid(user.uid!);
                            } else {
                              removeUid(user.uid!);
                            }
                          },
                          title: Text(user.name ?? ""),
                        );
                      },
                      error: ((error, stackTrace) {
                        return ErrorText(error: error.toString());
                      }),
                      loading: () => const Loader());
                });
          },
          error: ((error, stackTrace) {
            return ErrorText(error: error.toString());
          }),
          loading: () => const Loader()),
    );
  }
}
