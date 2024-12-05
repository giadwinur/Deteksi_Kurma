import 'dart:io';
import 'dart:typed_data';

// ignore: unused_import
import 'package:deteksi_kurma/jenisKurma/satuanKurma/kurmaAjwa.dart';
// ignore: unused_import
import 'package:deteksi_kurma/jenisKurma/satuanKurma/kurmaMedjool.dart';
import 'package:deteksi_kurma/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vision/flutter_vision.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class InputImage extends StatefulWidget {
  const InputImage({super.key});

  @override
  State<InputImage> createState() => _InputImageState();
}

class _InputImageState extends State<InputImage> {
  late FlutterVision vision;
  List<Map<String, dynamic>> results = [];
  bool isLoaded = false;
  File? imageFile;

  int imageHeight = 1;
  int imageWidth = 1;

  Future<void> pickImageCam() async {
    final ImagePicker picker = ImagePicker();
    // final XFile? photo = await picker.pickImage(source: ImageSource.gallery);
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      setState(() {
        imageFile = File(photo.path);
      });
    }
  }

  Future<void> pickImageGal() async {
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
        title: Text(
          'Detect Kurma',
          style: GoogleFonts.kavoon(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF753715),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  pickImageCam();
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: const Color(0xFF753715),
                  child: const Center(
                    child: FaIcon(FontAwesomeIcons.camera),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  pickImageGal();
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: const Color(0xFF753715),
                  child: const Center(
                    child: FaIcon(FontAwesomeIcons.fileImage),
                  ),
                ),
              ),
            ],
          ),

          // ElevatedButton(
          //   onPressed: () => pickImageCam(),
          //   child: Text(
          //     "pick image With Camera",
          //     style: GoogleFonts.kavoon(
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold,
          //       color: const Color(0xFF753715),
          //     ),
          //   ),
          // ),

          // ElevatedButton(
          //   onPressed: () => pickImageGal(),
          //   child: Text(
          //     "pick image With Gallery",
          //     style: GoogleFonts.kavoon(
          //       fontSize: 30,
          //       fontWeight: FontWeight.bold,
          //       color: const Color(0xFF753715),
          //     ),
          //   ),
          // ),
          const SizedBox(height: 20),
          imageFile == null
              ? const Center(child: Text('no image'))
              : Column(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.file(imageFile!),
                    ),
                  ],
                ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () => detectImage(),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF753715), // Warna latar belakang
              foregroundColor: Colors.white, // Warna teks
              minimumSize: const Size(50, 50), // Ukuran tombol (width x height)
            ),
            child: const Text("detect"),
          ),
          const SizedBox(height: 20),
          results.isEmpty
              ? const Center(child: Text('no results'))
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

      // Column(
      //   children: [
      //     Center(
      //       child: Text(
      //         'Take a picture',
      //         style: GoogleFonts.kavoon(
      //           fontSize: 30,
      //           fontWeight: FontWeight.bold,
      //           color: const Color(0xFF753715),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 10.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           GestureDetector(
      //             onTap: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => const KurmaAjwa()),
      //               );
      //             },
      //             child: Container(
      //               height: 200,
      //               width: 200,
      //               color: const Color(0xFF753715),
      //               child: const Center(
      //                 child: FaIcon(FontAwesomeIcons.camera),
      //               ),
      //             ),
      //           ),
      //           GestureDetector(
      //             onTap: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => const KurmaMedjool()),
      //               );
      //             },
      //             child: Container(
      //               height: 200,
      //               width: 200,
      //               color: const Color(0xFF753715),
      //               child: const Center(child: FaIcon(FontAwesomeIcons.fileImage)),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],

      // ),
      bottomNavigationBar: const Menu(),
    );
  }
}
