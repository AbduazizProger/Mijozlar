import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Итого: 15 000',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        Text(
          '1 х 15 000',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
