import 'package:flutter/material.dart';

class ChangeNumber extends StatelessWidget {
  const ChangeNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.blue[900],
            ),
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ),
        const Text(
          '1',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.blue[900],
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
