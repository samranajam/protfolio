import 'package:flutter/material.dart';

class lu extends StatelessWidget {
  final String img;
  const lu({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
      //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(img),
        ],
      ),
    );
  }
}
