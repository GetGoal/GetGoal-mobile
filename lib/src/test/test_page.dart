import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;

import '../shared/widgets/button/main_botton.dart';
import '../shared/widgets/scaffold/get_goal_sub_scaffold.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return GetGoalSubScaffold(
      body: Center(
        child: Column(
          children: [
            FutureBuilder(
              future: getImage(),
              builder: (c, s) {
                if (!s.hasData) return Container();

                return Image.network(s.data!);
              },
            ),
            MainButton(
              buttonText: 'Upload image',
              onTap: () async {
                await uploadImage();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<String> getImage() async {
    final ref = FirebaseStorage.instance
        .ref()
        .child('media')
        .child('program')
        .child('test_env.jpg');

    final url = await ref.getDownloadURL();
    log(url);

    return url;
  }

  Future<void> uploadImage() async {
    final firebaseStorage = FirebaseStorage.instance;
    final imagePicker = ImagePicker();
    //Check Permissions

    //Select Image
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    var file = File(image!.path);
    final imageName = p.basename(file.path).replaceFirst('image_picker_', '');

    log(imageName);

    await firebaseStorage
        .ref()
        .child('media/program/${p.basename(imageName)}')
        .putFile(file);
  }
}
