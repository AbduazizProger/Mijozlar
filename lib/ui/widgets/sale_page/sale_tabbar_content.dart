import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/sale_page/content_page.dart';

class SaleTabBarContent extends StatelessWidget {
  const SaleTabBarContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TabBarView(
        children: [
          ContentPage(),
          ContentPage(),
          ContentPage(),
        ],
      ),
    );
  }
}
