import 'package:flutter/material.dart';

class StorageItem extends StatelessWidget {
  const StorageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 354,
      height: 98,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/product.png', width: 70),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chococream 400', style: TextStyle(fontSize: 16)),
                        Text(
                          '33 800 сум',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      '120',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'шт',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
