import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String subtitle;

  const CategoryIcon(this.icon, this.subtitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2, color: Colors.blue[900]!)),
          child: Icon(icon, size: 30, color: Colors.blue[900]),
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
