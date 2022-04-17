import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String name = 'Farid Azhar Kusuma';
    const String nim = '20190801317';
    const String background =
        'https://artfiles.alphacoders.com/152/thumb-1920-152726.jpg';
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(background))),
              accountName: Text(
                '',
                style: TextStyle(fontSize: 16),
              ),
              accountEmail: Text(
                '',
                style: TextStyle(fontSize: 12),
              )),
          ListTile(
            title: Text('Name'),
            subtitle: Text(name),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text('NIM'),
            subtitle: Text(nim),
            leading: Icon(Icons.numbers),
          )
        ],
      ),
    );
  }
}