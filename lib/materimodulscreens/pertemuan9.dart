import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/models/makanan_model.dart';
import 'package:wisata_mobile_5/services/makanan_service.dart';
import 'package:wisata_mobile_5/widget/makanan_card.dart';

class Pertemuan9APIScreen extends StatelessWidget {
  final MakananService _makananService = MakananService();
  Pertemuan9APIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Daftar Makanan Seafood',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: FutureBuilder<List<MakananModel>>(
          future: _makananService.fetchMakanan(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text("Eror:${snapshot.error}"),
              );
            } else {
              final DaftarSeaFood = snapshot.data!;
              return ListView.builder(
                  itemCount: DaftarSeaFood.length,
                  itemBuilder: (context, index) {
                    return MakananCard(makananModel: DaftarSeaFood[index]);
                  });
            }
          },
          ),
    );
  }
}
