import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Absensi Kelas Mobile Programming Lanjut'),
        ),
        body: const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TeksUtama(
                teks1: 'Fahrul Rozi Junaedin',
                teks2: 'NIM: STI202102428',
              ),
              TeksUtama(
                teks1: 'Lintang Trio Saputra',
                teks2: 'NIM: STI202102429',
              ),
              TeksUtama(
                teks1: 'Ayu Tiarani',
                teks2: 'NIM: STI202102430',
                backgroundColor: Colors.green, // Mengatur latar belakang hijau
              ),
              TeksUtama(
                teks1: 'Ahmad Sarif',
                teks2: 'NIM: STI202102432',
              ),
              TeksUtama(
                teks1: 'Tria Wahyu Apriyanti',
                teks2: 'NIM: STI202102438',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor; // Tambahkan variabel untuk warna latar belakang

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container( // Gunakan Container untuk mengatur latar belakang
            color: backgroundColor, // Tetapkan warna latar belakang
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  teks1,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
                Text(
                  teks2,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
