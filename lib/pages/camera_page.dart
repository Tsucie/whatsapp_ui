import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';

class CameraPage extends StatelessWidget { //StatefulWidget {
  // final List<CameraDescription> cameras;

  // CameraPage(this.cameras);

  // @override
  // CameraPageState createState() {
  //   return new CameraPageState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.camera_alt_outlined, size: 120.00, color: Colors.grey),
            Text("Camera is not available",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Helvetica",
                fontSize: 14,
                fontWeight: FontWeight.bold
              )
            )
          ],
        ),
      ),
      backgroundColor: Colors.black12,
    );
  }
}

// class CameraPageState extends State<CameraPage> {
//   late CameraController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller =
//     new CameraController(widget.cameras[0], ResolutionPreset.medium);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return new Container();
//     }
//     return new AspectRatio(
//       aspectRatio: controller.value.aspectRatio,
//       child: new CameraPreview(controller),
//     );
//   }
// }