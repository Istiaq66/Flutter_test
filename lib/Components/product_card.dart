import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String minPrice;
  final String piclink;

  const ProductCard({
    super.key,
    required this.name,
    required this.minPrice,
    required this.piclink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(239, 206, 244, 255),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontFamily: 'SourceSans3',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '${minPrice} tk',
            style: const TextStyle(
              fontFamily: 'SourceSans3',
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Image(
              height: 150,
              image: NetworkImage(piclink),
            ),
          ),
        ],
      ),
    );
  }
}
