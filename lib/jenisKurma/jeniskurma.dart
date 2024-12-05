// ignore_for_file: file_names

import 'package:deteksi_kurma/jenisKurma/satuanKurma/kurmaAjwa.dart';
import 'package:deteksi_kurma/jenisKurma/satuanKurma/kurmaMuzafati.dart';
import 'package:deteksi_kurma/jenisKurma/satuanKurma/kurmaamber.dart';
import 'package:deteksi_kurma/jenisKurma/satuanKurma/kurmaSukari.dart';
import 'package:deteksi_kurma/jenisKurma/satuanKurma/kurmaMedjool.dart';
import 'package:deteksi_kurma/jenisKurma/satuanKurma/kurmaRutab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JenisKurma extends StatelessWidget {
  const JenisKurma({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Baris 1
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KurmaAjwa()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/ajwa.png'), // Ganti dengan gambar kurma ajwa
                      fit: BoxFit.cover, // Agar gambar memenuhi container
                    ),
                    borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                  ),
                  child: Center(
                    child: Text(
                      'Kurma Ajwa',
                      style: GoogleFonts.kavoon(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KurmaMedjool()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/medjol.jpg'), // Ganti dengan gambar kurma medjool
                      fit: BoxFit.cover, // Agar gambar memenuhi container
                    ),
                    borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                  ),
                  child: Center(
                    child: Text(
                      'Kurma Medjool',
                      style: GoogleFonts.kavoon(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        // Baris 2
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KurmaAmber()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/amber.png'), // Ganti dengan gambar kurma ajwa
                      fit: BoxFit.cover, // Agar gambar memenuhi container
                    ),
                    borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                  ),
                  child: Center(
                    child: Text(
                      'Kurma Amber',
                      style: GoogleFonts.kavoon(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KurmaMuzafati()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/kurma muzafati.jpg'), // Ganti dengan gambar kurma medjool
                      fit: BoxFit.cover, // Agar gambar memenuhi container
                    ),
                    borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                  ),
                  child: Center(
                    child: Text(
                      'Kurma Muzafati',
                      style: GoogleFonts.kavoon(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        // Baris 3
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KurmaRutab()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/rutab.jpg'), // Ganti dengan gambar kurma ajwa
                      fit: BoxFit.cover, // Agar gambar memenuhi container
                    ),
                    borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                  ),
                  child: Center(
                    child: Text(
                      'Kurma Rutab',
                      style: GoogleFonts.kavoon(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KurmaSukari()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/sukari.png'), // Ganti dengan gambar kurma medjool
                      fit: BoxFit.cover, // Agar gambar memenuhi container
                    ),
                    borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                  ),
                  child: Center(
                    child: Text(
                      'Kurma Sukari',
                      style: GoogleFonts.kavoon(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
