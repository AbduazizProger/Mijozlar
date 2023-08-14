import 'package:flutter/material.dart';

class NumberEditWidget extends StatelessWidget {
  const NumberEditWidget({
    super.key,
    required this.phoneController,
  });

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Номер телефона',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        TextField(
          controller: phoneController,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20),
            filled: true,
            fillColor: const Color.fromARGB(248, 234, 234, 234),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
