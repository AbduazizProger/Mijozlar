import 'package:flutter/material.dart';

class MoneyType extends StatelessWidget {
  const MoneyType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 172,
          height: 90,
          margin: const EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.green,
          ),
          child: const Center(
            child: Text(
              'Наличные',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Container(
          width: 172,
          height: 90,
          margin: const EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.green,
          ),
          child: const Center(
            child: Text(
              'Картой',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
