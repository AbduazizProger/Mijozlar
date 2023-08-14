import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/history_page/day_history.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 103,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(249, 214, 214, 214),
              ),
              child: const Text('Сегодня', style: TextStyle(fontSize: 18)),
            ),
            const DayHistory(),
            Container(
              width: 103,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(249, 214, 214, 214),
              ),
              child: const Text('Вчера', style: TextStyle(fontSize: 18)),
            ),
            const DayHistory(),
          ],
        ),
      ),
    );
  }
}
