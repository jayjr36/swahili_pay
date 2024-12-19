import 'package:flutter/material.dart';

class CategoryImage extends StatelessWidget {
  final String img;
  final String subtitle;

  const CategoryImage(this.img, this.subtitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 1, color: Colors.blue[900]!)),
          child: 
              Image.network(img, width: 30,),
            
        ),
        Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 10),
          )
      ],
    );
  }
}