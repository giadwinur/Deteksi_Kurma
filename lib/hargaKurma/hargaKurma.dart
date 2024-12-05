import 'package:deteksi_kurma/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HargaKurma extends StatelessWidget {
  const HargaKurma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kisaran Harga Kurma',
          style: GoogleFonts.kavoon(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF753715),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Kurma Ajwa',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/ajwa.png'), // Ganti dengan gambar kurma ajwa
                            fit: BoxFit.cover, // Agar gambar memenuhi container
                          ),
                          borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                        ),
                      ),
                    ),
                    Text(
                      'Rp. 150.000-Rp.300.000 \n         per kilo gram',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Kurma Medjool',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/medjol.jpg'), // Ganti dengan gambar kurma medjool
                            fit: BoxFit.cover, // Agar gambar memenuhi container
                          ),
                          borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                        ),
                      ),
                    ),
                    Text(
                      'Rp. 100.000-Rp.180.000\n         per kilo gram',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                Column(
                  children: [
                    Text(
                      'Kurma Amber',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/amber2.png'), // Ganti dengan gambar kurma ajwa
                            fit: BoxFit.cover, // Agar gambar memenuhi container
                          ),
                          borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                        ),
                      ),
                    ),
                    Text(
                      'Rp. 100.000-Rp.150.000\n         per kilo gram',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Kurma Muzafati',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/muzafati2.png'), // Ganti dengan gambar kurma medjool
                            fit: BoxFit.cover, // Agar gambar memenuhi container
                          ),
                          borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                        ),
                      ),
                    ),
                    Text(
                      'Rp. 50.000-Rp.100.000\n         per kilo gram',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                Column(
                  children: [
                    Text(
                      'Kurma Rutab',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/rutab.jpg'), // Ganti dengan gambar kurma ajwa
                            fit: BoxFit.cover, // Agar gambar memenuhi container
                          ),
                          borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                        ),
                      ),
                    ),
                    Text(
                      'Rp. 50.000-Rp.150.000 \n          per kilo gram',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Kurma Sukari',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/sukari.png'), // Ganti dengan gambar kurma medjool
                            fit: BoxFit.cover, // Agar gambar memenuhi container
                          ),
                          borderRadius: BorderRadius.circular(10), // Agar sudut container melengkung
                        ),
                      ),
                    ),
                    Text(
                      'Rp. 45.000-Rp.60.000\n    per kilo gram',
                      style: GoogleFonts.kavoon(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.white,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Menu(),
    );
  }
}
