import 'package:flutter/material.dart';
import 'package:submission_1/src/features/DetailChannel/card_item.dart';
import 'package:submission_1/src/features/DetailChannel/page_scaffold.dart';

class DetailChannel extends StatelessWidget {
  const DetailChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return const DetailChannelScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          child: Column(
            children: [
              CardItem(
                imgUrl: 'assets/images/rinjani.jpeg',
                location: 'Nusa Tenggara Timur',
                name: 'Gunung Rinjani',
                price: 'Rp 7.000.000',
                rate: 3,
                tags: ['Gunung', 'Summit'],
              ),
              SizedBox(height: 20),
              CardItem(
                imgUrl: 'assets/images/bukittinggi.jpeg',
                location: 'Sumatra Barat',
                name: 'Kota Bukittinggi',
                price: 'Rp 3.000.000',
                rate: 4,
                tags: ['Kota', 'Kuliner'],
              ),
              SizedBox(height: 20),
              CardItem(
                imgUrl: 'assets/images/banda.jpeg',
                location: 'Maluku',
                name: 'Banda Neira',
                price: 'Rp 6.000.000',
                rate: 4,
                tags: ['Sejarah', 'Pulau', 'Laut'],
              ),
              SizedBox(height: 20),
              CardItem(
                imgUrl: 'assets/images/papua.jpeg',
                location: 'Papua barat',
                name: 'Raja Ampat',
                price: 'Rp 10.000.000',
                rate: 4,
                tags: ['Kota', 'Kuliner'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
