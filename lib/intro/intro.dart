import 'package:deteksi_kurma/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: height,
        width: double.infinity,
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage('assets/kurma.jpg'),
            //   fit: BoxFit.cover,
            // ),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Selamat Datang',
              style: GoogleFonts.kavoon(
                fontSize: 40,
                fontWeight: FontWeight.w400,
                height: 50 / 40,
                color: const Color(0xFF753715),
              ),
            ),
            SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(
                  './assets/images/logo.png',
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF753715), // Warna latar belakang
                foregroundColor: Colors.white, // Warna teks
                minimumSize: const Size(200, 50), // Ukuran tombol (width x height)
              ),
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 18), // Ukuran font teks
              ),
            ),
          ],
        ),
      ),
    );
  }
}
