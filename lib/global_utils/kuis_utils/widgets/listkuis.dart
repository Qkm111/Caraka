import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListKuis extends StatelessWidget {
  final String point;
  final String name;
  final VoidCallback? onTap; // Ganti dari Widget navigate
  final Color color;

  const ListKuis({
      super.key, // Tambah super.key
      required this.name,
      required this.point,
      this.onTap, // Ganti dari required navigate
      required this.color
      });

  @override
  Widget build(BuildContext context) {
    // Fungsi _navigateKuis dihapus

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
      child: GestureDetector( // Tetap pakai GestureDetector sesuai kodemu
        onTap: onTap, // Panggil callback onTap
        child: Container(
          height: 88,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration( // Hapus const jika color tidak const
              borderRadius: BorderRadius.circular(16),
              color: color,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: const Offset(0, 4))
              ]),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                child: Row(
                  children: [
                    Text(
                      point,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      '/',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      '5',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 40, // Ukuran tetap
              ),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              IconButton( // Tetap pakai IconButton sesuai kodemu
                  onPressed: onTap, // Panggil callback onTap juga
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}