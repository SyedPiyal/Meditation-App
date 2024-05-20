import 'package:flutter/material.dart';

class ItemWidgets extends StatelessWidget {
  final String imagePath;
  final String itemTitle;
  const ItemWidgets({super.key, required this.imagePath, required this.itemTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(imagePath),
        ),
        Text(itemTitle,style: const TextStyle(color: Colors.white, fontFamily: 'Alegreya',),),
      ],
    );
  }
}
