// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KurmaAjwa extends StatelessWidget {
  const KurmaAjwa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kurma Ajwa',
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
              'Jenis Kurma Ajwa',
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
                image: AssetImage('assets/images/ajwa.png'), // Ganti dengan gambar kurma ajwa
                fit: BoxFit.cover, // Agar gambar memenuhi container
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              '     Kurma ajwa adalah kurma premium \nyang berasal dari Madinah, Saudi Arabia. \nKurma ini dikenal juga sebagai kurma nabi\n    karena konon Nabi Muhammad SAW \n           adalah orang pertama yang \n               membudidayakannya.',
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
