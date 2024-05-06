import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final String rating;
  final void Function()? details;

  const EventTile({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.all(10),
      width: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 61, 91, 212),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: details,
            child: Image.asset(imagePath),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Text(
                    rating,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Color.fromARGB(255, 224, 198, 6),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
