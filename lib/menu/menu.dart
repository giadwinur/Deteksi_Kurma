import 'package:deteksi_kurma/dashboard/dashboard.dart';
import 'package:deteksi_kurma/input/input.dart';
import 'package:deteksi_kurma/khasiat/khasiat.dart';
import 'package:deteksi_kurma/hargaKurma/hargaKurma.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HargaKurma()),
              );
            },
            child: const Icon(Icons.list, size: 30, color: Color.fromARGB(255, 113, 85, 18)),
            // const Badge(
            //   padding: EdgeInsets.all(7),
            //   backgroundColor: Colors.red,
            //   child: Icon(Icons.photo, size: 30, color: Colors.pink),
            // ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InputImage()),
              );
            },
            child: const Icon(Icons.camera_alt_rounded, size: 30, color: Color.fromARGB(255, 113, 85, 18)),
            // const Badge(
            //   padding: EdgeInsets.all(7),
            //   backgroundColor: Colors.red,
            //   child: Icon(Icons.home, size: 30, color: Colors.pink),
            // ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Khasiat()),
              );
            },
            child: const Icon(Icons.library_books, size: 30, color: Color.fromARGB(255, 113, 85, 18)),
            // const Badge(
            //   padding: EdgeInsets.all(7),
            //   backgroundColor: Colors.red,
            //   child: Icon(Icons.home, size: 30, color: Colors.pink),
            // ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HargaKurma()),
              );
            },
            child: const Icon(Icons.price_change_rounded, size: 30, color: Color.fromARGB(255, 113, 85, 18)),
            // const Badge(
            //   padding: EdgeInsets.all(7),
            //   backgroundColor: Colors.red,
            //   child: Icon(Icons.list, size: 30, color: Colors.pink),
            // ),
          ),
        ],
      ),
    );
  }
}
