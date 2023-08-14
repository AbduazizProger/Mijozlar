import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    super.key,
    required this.name,
    required this.image,
    required this.isSelected,
  });

  final String name;
  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 62,
      margin: const EdgeInsets.only(right: 20, top: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isSelected ? const Color.fromARGB(255, 28, 46, 126) : null,
      ),
      child: Row(
        children: [
          const SizedBox(width: 30),
          Image.asset(image, width: 25),
          const SizedBox(width: 20),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
