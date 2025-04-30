import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardForAll extends StatelessWidget {
  final String imagePath;
  final String text;

  const CardForAll({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: SizedBox(
        height: 100,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  imagePath,
                ),
              ),
              const SizedBox(height: 10),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}