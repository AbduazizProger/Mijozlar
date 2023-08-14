import 'package:flutter/material.dart';

class ChooseClient extends StatelessWidget {
  const ChooseClient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353,
      height: 78,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.person_rounded,
              color: Colors.grey[600],
              size: 32,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            'Пакупатель',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
