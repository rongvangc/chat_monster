import 'package:flutter/material.dart';

class MonsterCard extends StatelessWidget {
  final String image;
  final String name;
  final VoidCallback? onTap;

  const MonsterCard({
    super.key,
    required this.image,
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Colors.grey.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    image,
                    width: 70.0,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    name,
                    style: Theme.of(context).textTheme.labelLarge,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
