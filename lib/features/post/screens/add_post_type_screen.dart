import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_tutorial/core/common/error_text.dart';
import 'package:reddit_tutorial/core/utils.dart';
import 'package:reddit_tutorial/features/auth/models/community_model.dart';
import 'package:reddit_tutorial/features/community/controller/community_controller.dart';
import 'package:reddit_tutorial/product/textfield/text_field_common.dart';
import 'package:reddit_tutorial/theme/palette.dart';

import '../../../core/common/loader.dart';

class AddPostTypeScreen extends ConsumerStatefulWidget {
  final String type;
  const AddPostTypeScreen({required this.type, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddPostTypeScreenState();
}

class _AddPostTypeScreenState extends ConsumerState<AddPostTypeScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final linkController = TextEditingController();
  File? bannerFile;
  List<Community> communities = [];

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    descriptionController.dispose();
    linkController.dispose();
  }

  void selectBannerImage() async {
    final res = await pickImage();
    if (res != null) {
      setState(() {
        bannerFile = File(res.files.first.path!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isTypeImage = widget.type == 'image';
    final isTypeText = widget.type == 'text';
    final isTypeLink = widget.type == 'link';
    final currentTheme = ref.watch(themeNotifierProvider);
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Post ${widget.type}',
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('share'),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CommonTextField(
              controller: titleController,
              title: 'Enter Title Here',
            ),
            const SizedBox(
              height: 10,
            ),
            if (isTypeImage)
              GestureDetector(
                onTap: selectBannerImage,
                child: DottedBorder(
                  borderType: BorderType.RRect, // Containerı ovalleştiriyo
                  radius: const Radius.circular(10),
                  dashPattern: const [10, 4],
                  strokeCap: StrokeCap.round,
                  color: currentTheme.textTheme.bodyText2!.color!,
                  child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: bannerFile != null
                          ? Image.file(bannerFile!)
                          : const Center(
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 40,
                              ),
                            )),
                ),
              ),
            CommonTextField(
              controller: descriptionController,
              title: 'Edit Description here',
              maxLines: 5,
            ),
            const SizedBox(height: 10),
            if (isTypeLink)
              CommonTextField(
                controller: linkController,
                title: 'Edit Description here',
              ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('select Community'),
            ),
            ref.watch(userCommunitiesProvider).when(
                data: (data) {
                  communities = data;
                  if (data.isEmpty) {
                    return const SizedBox();
                  }
                  return DropdownButton(
                      items: data
                          .map((e) => DropdownMenuItem(
                                value: data[0],
                                child: Text(e.name.toString()),
                              ))
                          .toList(),
                      onChanged: (val) {});
                },
                error: ((error, stackTrace) {
                  return ErrorText(error: error.toString());
                }),
                loading: () => const Loader())
          ],
        ),
      ),
    );
  }
}
