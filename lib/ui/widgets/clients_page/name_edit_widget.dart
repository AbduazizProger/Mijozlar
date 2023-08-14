import 'package:flutter/material.dart';

class NameEditWidget extends StatelessWidget {
  const NameEditWidget({
    super.key,
    required this.nameController,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ФИО',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        TextField(
          controller: nameController,
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
            hintText: 'ФИО',
            hintStyle: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
            filled: true,
            contentPadding: const EdgeInsets.all(20),
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
