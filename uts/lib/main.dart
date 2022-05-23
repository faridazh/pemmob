import 'package:flutter/material.dart';

import 'detailBarang.dart';
import 'drawerscreen.dart';
import 'model/listBarang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Distributor Gas Keren"),
      ),
      drawer: DrawerScreen(listPesan: [],),
      body: GridView.count(
        crossAxisCount: 2,
        children: listBarang
            .map((barang) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailBarang(
                    barang: barang,
                  )),
            );
          },
          child: SizedBox(
            height: 200,
            child: Card(
              elevation: 20,
              child: Column(
                children: [
                  SizedBox(
                      height: 150,
                      child: Image.network(barang.coverlink)),
                  Text(barang.nama)
                ],
              ),
            ),
          ),
        ))
            .toList(),
      ),
    );
  }
}