import 'dart:io';

import 'package:camera_app/Screens/image_preview_screen.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  static const String id = "/GalleryScreen";

  final List<File> images;
  const GalleryScreen({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: images
            .map(
              (image) => InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(ImagePreviewScreen.id, arguments: {
                    "image": image,
                  });
                },
                child: Image.file(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
