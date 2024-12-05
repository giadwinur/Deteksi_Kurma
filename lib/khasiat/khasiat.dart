import 'package:deteksi_kurma/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Khasiat extends StatelessWidget {
  const Khasiat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Khasiat Kurma',
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
                padding: const EdgeInsets.all(0),
                child: Stack(
                  children: [
                    // Gambar dengan bayangan
                    Container(
                      width: double.infinity, // Lebar gambar mengikuti lebar layar
                      height: 250, // Tinggi gambar
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/khasiat.png'), // Gambar dari aset
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
                      bottom: 80, // Jarak dari bawah gambar
                      left: 20, // Jarak dari kiri
                      right: 20, // Jarak dari kanan
                      child: Text(
                        'Khasiat Kurma',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kavoon(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Column untuk menampilkan gambar dan teks
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Gambar kedua di kiri
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/k1.png'), // Gambar kedua
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(width: 10), // Jarak antara gambar dan teks
                        // Teks di kanan
                        const Expanded(
                          child: Text(
                            'Kandungan dalam buah kurma dapat mengembalikan energi dan mengganti elektrolit yang hilang selama berpuasa.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10), // Jarak antar baris

                    // Baris 3 - Gambar dan teks ketiga
                    Row(
                      children: [
                        // Gambar ketiga di kiri
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/k2.png'), // Gambar ketiga
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(width: 10), // Jarak antara gambar dan teks
                        // Teks di kanan
                        const Expanded(
                          child: Text(
                            'Kurma mengandung kalium yang berfungsi menjaga kesehatan jantung.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10), // Jarak antar baris

                    // Baris 4 - Gambar dan teks keempat
                    Row(
                      children: [
                        // Gambar keempat di kiri
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/k3.png'), // Gambar keempat
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(width: 10), // Jarak antara gambar dan teks
                        // Teks di kanan
                        const Expanded(
                          child: Text(
                            'Kandungan serat yang tinggi membantu mencegah sembelit, meningkatkan kesehatan usus, dan memperlancar proses pencernaan.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10), // Jarak antar baris

                    // Baris 5 - Gambar dan teks kelima
                    Row(
                      children: [
                        // Gambar kelima di kiri
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/k4.png'), // Gambar kelima
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(width: 10), // Jarak antara gambar dan teks
                        // Teks di kanan
                        const Expanded(
                          child: Text(
                            'Vitamin C dan D dalam kurma membantu menjaga elastisitas kulit, memperlambat penuaan, dan mempercepat penyembuhan luka.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10), // Jarak antar baris
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              '\n"Barangsiapa di waktu pagi hari makan 7 butir kurma dari \n kedua Labah (yaitu batas kota sebelah Timur dan Barat),\n             ia tidak akan kena racun hingga sore hari."\n                              (HR. Bukhari dan Muslim).',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Menu(),
    );
  }
}
