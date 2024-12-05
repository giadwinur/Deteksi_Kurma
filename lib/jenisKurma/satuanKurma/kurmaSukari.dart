// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KurmaSukari extends StatelessWidget {
  const KurmaSukari({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kurma Sukari',
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
              'Jenis Kurma Sukari',
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
                image: AssetImage('assets/images/sukari.png'), // Ganti dengan gambar kurma ajwa
                fit: BoxFit.cover, // Agar gambar memenuhi container
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              '     Kurma Sukkari dikenal sebagai “Ratu Kurma”. \nKurma ini disebut-sebut sebagai kurma kerajaan\n ArabKurma sukkari memiliki warna yang lebih\n terangdibandingkan dengan kurma lainnya.\n                Rasa nya manis dan legit, saat\n                   digigit dagingnya lembut.',
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
