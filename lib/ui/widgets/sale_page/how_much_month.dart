import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/clients_page/check_list.dart';

class HowMuchMonth extends StatelessWidget {
  const HowMuchMonth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'На сколько месяцев делится',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (_) {
                return const CheckList(
                  items: ['3', '6', '12', '18', '24', '30', '36'],
                  selected: 0,
                );
              },
            );
          },
          child: Container(
            height: 70,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[300],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '3',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
