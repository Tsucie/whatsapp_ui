
import 'homepage.dart';
import 'dart:async';
// import "package:camera/camera.dart" show CameraDescription, availableCameras;
import 'package:flutter/material.dart';

// List<CameraDescription> cameras = <CameraDescription>[];

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyChat',
      theme: ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      // home: new HomePage(cameras:cameras),
      home: new HomePage(),
    );
  }
}
