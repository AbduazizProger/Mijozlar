import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(248, 234, 234, 234),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Выберите статус',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              )),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
