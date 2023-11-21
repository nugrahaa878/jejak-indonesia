import 'package:flutter/material.dart';
import 'package:submission_1/src/features/DetailChannel/chip.dart';

class CardItem extends StatelessWidget {
  final int rate;
  final String name;
  final String location;
  final String price;
  final String imgUrl;
  final List<String> tags;

  const CardItem({
    super.key,
    required this.rate,
    required this.name,
    required this.location,
    required this.price,
    required this.imgUrl,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(imgUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: tags.map((tag) {
                  return ChipCard(text: tag);
                }).toList(),
              ),
              const Icon(
                Icons.add_location_alt_outlined,
                color: Colors.deepOrange,
              )
            ],
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.deepOrange,
                      size: 20.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.deepOrange,
                      size: 20.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.deepOrange,
                      size: 20.0,
                    ),
                  ],
                ),
                const SizedBox(height: 4.0),
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      location,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
