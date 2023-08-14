import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/history_page/refund_result_widget.dart';
import 'package:mijozlar/ui/widgets/history_page/refund_widget.dart';

class RefundPage extends StatelessWidget {
  const RefundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Возврат'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.keyboard_arrow_left, size: 33),
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
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              width: 358,
              height: 567,
              margin: const EdgeInsets.all(14),
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const RefundWidget();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(builder: (_) {
                        return const RefundResultWidget();
                      }),
                    );
                  },
                  child: Container(
                    width: 353,
                    height: 73,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 38, 58, 150),
                    ),
                    child: const Center(
                      child: Text(
                        'К возврату: 40 000 сум',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(247, 250, 250, 250),
    );
  }
}
