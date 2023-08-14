import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/history_page/history_item.dart';

class DayHistory extends StatelessWidget {
  const DayHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HistoryItem(),
        HistoryItem(),
        HistoryItem(),
        HistoryItem(),
        HistoryItem(),
        HistoryItem(),
      ],
    );
  }
}
