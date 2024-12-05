// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KurmaMedjool extends StatelessWidget {
  const KurmaMedjool({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kurma Medjool',
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
              'Jenis Kurma Medjool',
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
                image: AssetImage('assets/images/medjol2.png'), // Ganti dengan gambar kurma ajwa
                fit: BoxFit.cover, // Agar gambar memenuhi container
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              '       Kurma Medjool adalah salah satu jenis kurma \nyang terkenal karena ukuran besar, rasa manis yang\n    khas, dan tekstur yang lembut. Kurma Medjool\n     berasal dari Maroko, tetapi kini juga banyak\n   dibudidayakan di negara-negara beriklim panas\n   seperti Israel, Palestina, dan beberapa daerah di \n   Timur Tengah serta Asia Selatan. Kurma ini dikenal \n   dengan sebutan "Raja Kurma" karena ukuran dan\n       kualitasnya yang superior dibandingkan \n                          jenis kurma lainnya.',
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
