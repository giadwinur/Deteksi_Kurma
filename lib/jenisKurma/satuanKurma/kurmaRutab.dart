// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KurmaRutab extends StatelessWidget {
  const KurmaRutab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kurma Rutab',
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
              'Jenis Kurma Rutab',
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
                image: AssetImage('assets/images/rutab2.png'), // Ganti dengan gambar kurma ajwa
                fit: BoxFit.cover, // Agar gambar memenuhi container
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              '       Kurma Ruthob, atau Ruthab, adalah jenis kurma\n muda yang memiliki karakteristik unik dan dianggap\n istimewa. Kurma ini biasanya berwarna merah, hijau, atau kuning, tergantung pada varietasnya. Teksturnya\n masih renyah dan tidak lembek seperti kurma\n matang, mirip dengan tomat mentah. Rasa kurma Ruthob tidak terlalu manis dan sedikit sepat, memberikan pengalaman rasa yang berbeda dibandingkan dengan kurma yang lebih matang.',
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
