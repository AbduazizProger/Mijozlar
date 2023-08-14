import 'package:flutter/material.dart';

class PriceEditor extends StatelessWidget {
  const PriceEditor({
    super.key,
    required this.priceController,
  });

  final TextEditingController priceController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Цена',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        TextField(
          controller: priceController,
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
            hintStyle: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
            filled: true,
            suffixIcon: const SizedBox(
              width: 30,
              height: 30,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    'UZS',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            contentPadding: const EdgeInsets.all(20),
            fillColor: Colors.grey[300],
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
