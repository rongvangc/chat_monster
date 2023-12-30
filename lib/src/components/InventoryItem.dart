import 'package:flutter/material.dart';

class InventoryItem extends StatelessWidget {
  final Color color;
  final String icon;
  final String text;
  final VoidCallback? onTap;
  const InventoryItem({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
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
            color: color.withOpacity(.2),
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
                    icon,
                    width: 46.0,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.labelMedium,
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
