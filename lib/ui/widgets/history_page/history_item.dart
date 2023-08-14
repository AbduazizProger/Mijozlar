import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/history_page/history_item_page.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute(builder: (_) {
            return const HistoryItemPage();
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(9),
        child: SizedBox(
          width: 353,
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Продажа №0006',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '40 000 сум',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '10:08',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(250, 150, 152, 160),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Наличные',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(250, 39, 174, 96),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Container(
                height: 1,
                width: 353,
                color: const Color.fromARGB(249, 214, 214, 214),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
