import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_vision/flutter_vision.dart';
import 'package:image_picker/image_picker.dart';

class HomeX extends StatefulWidget {
  const HomeX({
    super.key,
  });

  @override
  State<HomeX> createState() => _HomeXState();
}

class _HomeXState extends State<HomeX> {
  late FlutterVision vision;
  List<Map<String, dynamic>> results = [];
  bool isLoaded = false;
  File? imageFile;

  int imageHeight = 1;
  int imageWidth = 1;

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: ImageSource.gallery);
    // final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      setState(() {
        imageFile = File(photo.path);
      });
    }
  }

  Future<void> loadModel() async {
    await vision.loadYoloModel(
        labels: 'assets/ai/labels.txt',
        modelPath: 'assets/ai/yolov5n.tflite',
        modelVersion: "yolov5",
        quantization: false,
        numThreads: 2,
        useGpu: true);
    setState(() {
      isLoaded = true;
    });
  }

  detectImage() async {
    results.clear();
    Uint8List byte = await imageFile!.readAsBytes();
    final image = await decodeImageFromList(byte);
    imageHeight = image.height;
    imageWidth = image.width;
    final result = await vision.yoloOnImage(
        bytesList: byte,
        imageHeight: image.height,
        imageWidth: image.width,
        iouThreshold: 0.8,
        confThreshold: 0.4,
        classThreshold: 0.5);
    if (result.isNotEmpty) {
      setState(() {
        results = result;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    vision = FlutterVision();
    loadModel().then((value) {
      setState(() {
        results = [];
        isLoaded = true;
      });
    });
  }

  @override
  void dispose() async {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Material App Bar'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => pickImage(),
            child: const Text("pick image"),
          ),
          const SizedBox(height: 20),
          imageFile == null
              ? const Text('no image')
              : Column(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 100,
                      child: Image.file(imageFile!),
                    ),
                  ],
                ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () => detectImage(),
            child: const Text("detect image"),
          ),
          const SizedBox(height: 20),
          results.isEmpty
              ? const Text('no results')
              : Column(
                  children: [
                    ...List.generate(
                      results.length,
                      (index) => Card(child: Text(results[index]['tag'].toString())),
                    )
                  ],
                ),
          // Text(results.toString()),
        ],
      ),
    );
  }
}
