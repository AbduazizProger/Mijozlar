import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/sale_page/price_editor.dart';

class PriceNumberEditor extends StatelessWidget {
  const PriceNumberEditor({
    super.key,
    required this.priceController,
  });

  final TextEditingController priceController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PriceEditor(priceController: priceController),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Цена покупки: 10 000 UZS',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Количество',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Container(
                width: 88,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.blue[900],
                ),
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: 145,
              height: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Colors.grey[300],
              ),
              child: const Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Container(
                width: 88,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.blue[900],
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
