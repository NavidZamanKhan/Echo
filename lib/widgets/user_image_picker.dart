import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({super.key});

  @override
  State<UserImagePicker> createState() {
    return _UserImagePickerState();
  }
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? _pickedImageFile;

  void _pickedImage() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
      maxWidth: 150,
    );

    if (pickedImage == null) {
      return;
    } else {
      setState(() {
        _pickedImageFile = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey,
          foregroundImage: _pickedImageFile == null
              ? null
              : FileImage(_pickedImageFile!),
        ),
        TextButton.icon(
          onPressed: _pickedImage,
          icon: Icon(
            Icons.image,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          label: Text(
            "Add Image",
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
      ],
    );
  }
}
