import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/sale_page/change_number.dart';
import 'package:mijozlar/ui/widgets/sale_page/price_number.dart';

class SaleItem extends StatelessWidget {
  const SaleItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 354,
      height: 98,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset('assets/images/product.png', width: 70),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dada Напиток Апельс... 0.5л',
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  children: [
                    PriceNumber(),
                    SizedBox(width: 70),
                    ChangeNumber(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
