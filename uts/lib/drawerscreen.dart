import 'package:flutter/material.dart';

import 'model/barang.dart';

class DrawerScreen extends StatelessWidget {
  final List<Barang> listPesan;

  const DrawerScreen({Key? key, required this.listPesan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String nama = 'Farid Azhar Kusuma';
    const String nim = '20190801317';
    const String background =
        'https://cdn.discordapp.com/attachments/761576416751255562/978238607326330920/1029784.jpg';
    return Drawer(
      backgroundColor: Colors.green,
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(background))),
              accountName: Text(
                '',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              accountEmail: Text(
                '',
                style: TextStyle(fontSize: 12, color: Colors.white),
              )),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 8, right: 8),
            child: Card(
              elevation: 30,
              child: ListTile(
                title: Text('Nama'),
                subtitle: Text(nama),
                leading: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: Card(
              elevation: 30,
              child: ListTile(
                title: Text('NIM'),
                subtitle: Text(nim),
                leading: Icon(Icons.numbers),
              ),
            ),
          ),
        ],
      ),
    );
  }
}