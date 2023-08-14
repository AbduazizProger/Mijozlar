import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/sale_page/sale_tabbar_content.dart';
import 'package:mijozlar/ui/widgets/sale_page/sale_tabbar_widget.dart';

class SalePage extends StatelessWidget {
  const SalePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Column(
        children: [SaleTabBarWidget(), SaleTabBarContent()],
      ),
    );
  }
}
