import 'package:flutter/material.dart';
import 'package:tugas4/home/components/input_widget.dart';
import 'package:tugas4/models/jarak_count.dart';

import '../drawer_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Jarak _jarak = Jarak();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 4'),
        centerTitle: true,
      ),
      drawer: const DrawerScreen(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: ListView(physics: const BouncingScrollPhysics(), children: [
              const Text('Masukkan Jarak:'),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                ),
                child: InputWidget(
                  jarak: (Jarak jarak) => setState(() => _jarak = jarak),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text('Meter -> Kilometer'),
                subtitle: Text('${_jarak.getHasilKm()}'),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(
                  'Meter -> Hectometer',
                  style: TextStyle(),
                ),
                subtitle: Text('${_jarak.getHasilHm()}'),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(
                  'Meter -> Decameter',
                  style: TextStyle(),
                ),
                subtitle: Text('${_jarak.getHasilDam()}'),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(
                  'Meter -> Meter',
                  style: TextStyle(),
                ),
                subtitle: Text('${_jarak.getHasilM()}'),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(
                  'Meter -> Decimeter',
                  style: TextStyle(),
                ),
                subtitle: Text('${_jarak.getHasilDm()}'),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(
                  'Meter -> Centimeter',
                  style: TextStyle(),
                ),
                subtitle: Text('${_jarak.getHasilCm()}'),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                  title: const Text(
                    'Meter -> Milimeter',
                    style: TextStyle(),
                  ),
                  subtitle: Text('${_jarak.getHasilMm()}'))
            ]),
          ),
        ),
      ),
    );
  }
}
