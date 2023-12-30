import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Theme.of(context).primaryColor,
      padding: const EdgeInsets.all(12.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    );

    return FractionallySizedBox(
      widthFactor: 1,
      child: ElevatedButton(
        onPressed: onPressed,
        style: buttonPrimary,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
