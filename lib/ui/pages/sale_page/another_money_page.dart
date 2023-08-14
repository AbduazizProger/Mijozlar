import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/refund_result_widget.dart';

class AnotherMoneyPage extends StatelessWidget {
  const AnotherMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Оплата наличными'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Итого: 40 000',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Наличными',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    TextField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: '0',
                        hintStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                        filled: true,
                        fillColor: Colors.grey[300],
                        contentPadding: const EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'Сдача: 0',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
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
                  height: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 38, 58, 150),
                  ),
                  child: const Center(
                    child: Text(
                      'Сохранить',
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
    );
  }
}
