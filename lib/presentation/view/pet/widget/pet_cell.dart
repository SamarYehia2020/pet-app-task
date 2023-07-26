import 'package:flutter/material.dart';

class PetCell extends StatelessWidget {
  final String image;
  final String type;
  final String category;
  final int count;

  const PetCell({
    Key? key,
    required this.image,
    required this.type,
    required this.category,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 115,
            height: 115,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                type,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 5),
              Text(
                category,
                style: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.primaryContainer),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 27,
                    height: 29,
                    child: Image.asset('assets/images/pawprintImg.png'),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Pet Love: $count",
                    style: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.secondary),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
