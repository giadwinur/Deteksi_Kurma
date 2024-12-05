import 'package:deteksi_kurma/jenisKurma/jeniskurma.dart';
import 'package:deteksi_kurma/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: GoogleFonts.kavoon(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF753715),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(
                    children: [
                      // Gambar dengan bayangan
                      Container(
                        width: double.infinity, // Lebar gambar mengikuti lebar layar
                        height: 250, // Tinggi gambar
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/bg.png'), // Gambar dari aset
                            fit: BoxFit.cover, // Agar gambar memenuhi ukuran container
                          ),
                        ),
                      ),
                      // Menambahkan layer hitam transparan untuk membuat gambar lebih gelap
                      Container(
                        width: double.infinity,
                        height: 250,
                        color: Colors.black.withOpacity(0.6), // Menggunakan opacity untuk gelapkan gambar
                      ),
                      // Teks di atas gambar
                      Positioned(
                        bottom: 100, // Jarak dari bawah gambar
                        left: 20, // Jarak dari kiri
                        right: 20, // Jarak dari kanan
                        child: Text(
                          'Kurma (Phoenix dactylifera) merupakan tanaman buah tertua yang ditanam di daerah kering.\nKandungan dalam buah kurma dapat mengembalikan energi dan mengganti elektrolit yang hilang selama berpuasa.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kavoon(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Text(
                'Jenis-jenis Kurma:',
                style: GoogleFonts.kavoon(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF753715),
                ),
              ),
            ),
          ),
          const JenisKurma(), // Memanggil class JenisKurma di sini
        ],
      ),
      bottomNavigationBar: const Menu(),
    );
  }
}
