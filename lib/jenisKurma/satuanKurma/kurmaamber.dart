// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KurmaAmber extends StatelessWidget {
  const KurmaAmber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kurma Amber',
          style: GoogleFonts.kavoon(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF753715),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Jenis Kurma Amber',
              style: GoogleFonts.kavoon(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF753715),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/amber2.png'), // Ganti dengan gambar kurma ajwa
                fit: BoxFit.cover, // Agar gambar memenuhi container
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              '       Kurma Amber adalah salah satu jenis kurma yang terkenal karena ukuran dan rasa yang unik. Kurma ini memiliki penampilan yang menarik dengan warna kuning cerah dan tekstur kulit yang jelas terlihat. Daging buah kurma Amber tergolong lebih tebal dan kering dibandingkan dengan jenis kurma lainnya.',
              style: GoogleFonts.kavoon(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
