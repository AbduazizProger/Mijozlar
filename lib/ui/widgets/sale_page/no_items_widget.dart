import 'package:flutter/material.dart';

class NoItemsWidget extends StatelessWidget {
  const NoItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Image.asset(
          'assets/images/zero_product.png',
          width: 198,
          height: 198,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 101, maxWidth: 247),
          child: const Column(
            children: [
              Text(
                'Выберите продукт',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                textAlign: TextAlign.center,
              ),
              Text(
                'Выберите продукт с помощью кнопки сканирования или поиска!',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
