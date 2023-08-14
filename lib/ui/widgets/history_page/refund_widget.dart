import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/sale_page/sold_item_widget.dart';

class RefundWidget extends StatelessWidget {
  const RefundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SoldItemWidget(),
        const Text(
          'Количество',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              width: 118,
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
