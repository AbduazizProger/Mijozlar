import 'package:flutter/material.dart';

class CardMoneyEnter extends StatelessWidget {
  const CardMoneyEnter({
    super.key,
    required this.cardMoneycontroller,
  });

  final TextEditingController cardMoneycontroller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Картой',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          TextField(
            controller: cardMoneycontroller,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              hintText: '0',
              hintStyle: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
              filled: true,
              fillColor: Colors.grey[300],
              contentPadding: const EdgeInsets.all(20),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
