import 'package:camera_app/Widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ImagePreviewScreen extends StatelessWidget {
  static const String id = "/ImagePreviewScreen";

  const ImagePreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    var image = data["image"];

    final Size s = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Preview Screen"),
        centerTitle: true,
      ),
      body: Container(
        height: s.height,
        width: s.width,
        child: Column(
          children: [
            Container(
              child: image != null
                  ? Center(
                      child: Image.file(
                        image,
                        fit: BoxFit.fill,
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomButton(
                    text: "Share",
                    icon: Icons.share,
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    text: "Save in Mobile",
                    icon: Icons.share,
                  ),
                ),
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
