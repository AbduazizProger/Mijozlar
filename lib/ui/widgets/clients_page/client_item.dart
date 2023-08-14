import 'package:flutter/material.dart';

class ClientItem extends StatelessWidget {
  const ClientItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        width: 353,
        height: 53,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text(
                        'Ahror Yusupov',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '+998931234567',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  Text(
                    'Vip',
                    style: TextStyle(fontSize: 18, color: Colors.amber[700]),
                  ),
                ],
              ),
            ),
            const ColoredBox(
              color: Color.fromARGB(249, 213, 214, 214),
              child: SizedBox(width: 333, height: 1),
            ),
          ],
        ),
      ),
    );
  }
}
