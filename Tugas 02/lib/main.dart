import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pemrograman Mobile - Tugas 02',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tugas 02 - Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    String linkImage =
        'https://cdn.discordapp.com/attachments/761576416751255562/960187140543758396/260871568_648646399627792_5622337222077631211_n.jpg';
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text('Tugas 02')),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Selamat Datang di Universitas Esa Unggul \nProgram Studi Teknik Informatika - Fakultas Ilmu Komputer',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  linkImage,
                  height: 200,
                  width: size.width,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Nama Saya Farid Azhar Kusuma'),
                const Text('NIM Saya 20190801317'),
                const Text('Hobby Saya belajar'),
                const Text('Pekerjaan Saya mahasiswa'),
                const Text('Status Saya belum menikah')
              ],
            ),
          )),
    );
  }
}
