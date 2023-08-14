import 'package:flutter/material.dart';

class SaleTabBarWidget extends StatelessWidget {
  const SaleTabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 353,
        height: 49,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey,
        ),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: const [
            Tab(
              child: Text(
                'Продажа 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                'Продажа 2',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                'Продажа 3',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 38, 58, 150),
          ),
        ),
      ),
    );
  }
}
