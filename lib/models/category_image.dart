import 'package:flutter/material.dart';

class CategoryImage extends StatelessWidget {
  final String img;
  final String subtitle;

  const CategoryImage(this.img, this.subtitle, {super.key});

  @override
Widget build(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle, 
          color: Colors.white,
          // border: Border.all(width: 1, color: Colors.blue[900]!),
        ),
        child: ClipOval(
          child: Image.asset(
            img,
            fit: BoxFit.contain, // Ensures the image fits within the circle
          ),
        ),
      ),
      const SizedBox(height: 8), // Add spacing between the image and text
      Text(
        subtitle,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 10),
      ),
    ],
  );
}

}