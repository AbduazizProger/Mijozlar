import 'package:flutter/material.dart';

class DiscountNumber extends StatelessWidget {
  const DiscountNumber({
    super.key,
    required this.discountController,
  });

  final TextEditingController discountController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 149,
      height: 59,
      child: TextField(
        autofocus: true,
        controller: discountController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding: const EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.blue[900] ?? Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
