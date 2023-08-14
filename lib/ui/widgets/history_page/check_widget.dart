import 'package:flutter/material.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Пакупатель', style: TextStyle(fontSize: 16)),
              Text(
                'Ahror Yusupov',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Скидка', style: TextStyle(fontSize: 16)),
              Text(
                '20% • 8000 сум',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Оплачено', style: TextStyle(fontSize: 16)),
              Text(
                '32 000 сум',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Тип оплата', style: TextStyle(fontSize: 16)),
              Text(
                'Наличные',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              children: List.generate(
                50,
                (index) => const Row(
                  children: [
                    ColoredBox(
                      color: Colors.black,
                      child: SizedBox(width: 3, height: 2),
                    ),
                    SizedBox(width: 3),
                  ],
                ),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('ИТОГ:', style: TextStyle(fontSize: 18)),
              Text(
                '40 000 сум',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
