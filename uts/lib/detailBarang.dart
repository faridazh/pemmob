import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/barang.dart';

class DetailBarang extends StatefulWidget {
  final Barang barang;

  const DetailBarang({Key? key, required this.barang}) : super(key: key);

  @override
  State<DetailBarang> createState() => _DetailBarangState();
}

class _DetailBarangState extends State<DetailBarang> {
  @override
  Widget build(BuildContext context) {
    final Barang barang = widget.barang;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Barang"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 150, child: Image.network(barang.coverlink)),
              Text(barang.nama),
              Text("Deskripsi : ${barang.deskripsi}"),
              Text("Stok :${barang.stok}"),
              Text("Harga   :${barang.harga}"),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CupertinoAlertDialog(
                            title: Text("Konfirmasi Pesanan"),
                            content: Text("Anda Yakin?"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Tidak")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Ya")),
                            ],
                          );
                        });
                  },
                  child: Text("Pesan"))
            ],
          ),
        ),
      ),
    );
  }
}