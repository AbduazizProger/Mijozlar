import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/sale_page/sold_item_widget.dart';

class SoldItems extends StatelessWidget {
  const SoldItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SoldItemWidget(),
        SoldItemWidget(),
        SoldItemWidget(),
      ],
    );
  }
}
