import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 169,
          height: 59,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[300],
          ),
          child: const Center(
            child: Text(
              'Удалить',
              style: TextStyle(fontSize: 20, color: Colors.redAccent),
            ),
          ),
        ),
        Container(
          width: 169,
          height: 59,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue[900],
          ),
          child: const Center(
              child: Text(
            'Сохранить',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
        ),
      ],
    );
  }
}
