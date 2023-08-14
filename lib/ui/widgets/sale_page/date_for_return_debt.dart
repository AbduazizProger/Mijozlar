import 'package:flutter/material.dart';

class DateForReturnDebt extends StatelessWidget {
  const DateForReturnDebt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 7,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Дата возврата долга',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2150),
              );
            },
            child: Container(
              width: 353,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: const Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  'дд.мм.гггг',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
