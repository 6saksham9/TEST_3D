import 'package:flutter/material.dart';
//import 'package:flutter_cube/flutter_cube.dart';
//import 'package:test3d/ar.dart';
//import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
//body: BabylonJSViewer(src: 'assets/cat.glb'),

      body: ModelViewer(
        src: 'assets/car.glb',
        ar: true,
        autoRotate: true,
        cameraControls: true,
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   late Object jet;
//   late Object shark;
//   @override
//   void initState() {
//     jet = Object(fileName: "assets/jet/Jet.obj");
//     jet.rotation.setValues(0, 90, 0);
//     jet.updateTransform();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: const Text("Jett"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Cube(
//               onSceneCreated: (Scene scene) {
//                 scene.world.add(jet);
//                 scene.camera.zoom = 10;
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


