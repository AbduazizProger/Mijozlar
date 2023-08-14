import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceNumber extends StatelessWidget {
  const PriceNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '6 000 сум',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          children: [
            const Icon(
              CupertinoIcons.cube_box_fill,
              color: Colors.grey,
            ),
            Text(
              '350',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            )
          ],
        ),
      ],
    );
  }
}
