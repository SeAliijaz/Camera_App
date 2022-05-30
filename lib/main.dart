import 'package:camera/camera.dart';
import 'package:camera_app/Screens/camera_screen.dart';
import 'package:camera_app/Screens/gallery_screen.dart';
import 'package:camera_app/Screens/image_preview_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();
  runApp(MyApp(cameras: cameras));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera App',
      debugShowCheckedModeBanner: false,
      home: CameraScreen(cameras: cameras),
      routes: {
        CameraScreen.id: (context) {
          return CameraScreen(cameras: cameras);
        },
        GalleryScreen.id: (context) {
          return const GalleryScreen(
            images: [],
          );
        },
        ImagePreviewScreen.id: (context) {
          return ImagePreviewScreen();
        }
      },
    );
  }
}
