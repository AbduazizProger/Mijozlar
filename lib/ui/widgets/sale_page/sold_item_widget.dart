import 'package:flutter/material.dart';

class SoldItemWidget extends StatelessWidget {
  const SoldItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 326,
        height: 68,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/images/product.png', width: 50),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dada Напиток Апельс... 0.5л',
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            '1 x 6 000',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          SizedBox(width: 100),
                          Text(
                            '6 000 сум',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const ColoredBox(
              color: Color.fromARGB(255, 225, 225, 225),
              child: SizedBox(width: 326, height: 1),
            ),
          ],
        ),
      ),
    );
  }
}
