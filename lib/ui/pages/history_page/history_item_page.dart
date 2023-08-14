import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/history_page/refund_page.dart';
import 'package:mijozlar/ui/widgets/history_page/check_widget.dart';
import 'package:mijozlar/ui/widgets/sale_page/sold_items.dart';

class HistoryItemPage extends StatelessWidget {
  const HistoryItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Продажа №0001'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.print,
              color: Colors.grey[600],
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(0, 250, 250, 250),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 358,
                height: 442,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: const Column(
                  children: [
                    SoldItems(),
                    CheckWidget(),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
                    return const RefundPage();
                  }));
                },
                child: Container(
                  width: 353,
                  height: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(249, 209, 210, 211),
                  ),
                  child: const Center(
                    child: Text(
                      'Создать возврат',
                      style: TextStyle(
                        color: Color.fromARGB(250, 38, 58, 150),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(240, 250, 250, 250),
    );
  }
}
