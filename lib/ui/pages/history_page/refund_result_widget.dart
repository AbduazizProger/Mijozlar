import 'package:flutter/material.dart';

class RefundResultWidget extends StatefulWidget {
  const RefundResultWidget({super.key});

  @override
  State<RefundResultWidget> createState() => _RefundResultWidgetState();
}

class _RefundResultWidgetState extends State<RefundResultWidget> {
  bool shouldFinish = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Обработка запрса'),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: shouldFinish
          ? Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/loaded.png',
                        width: 140,
                      ),
                    ),
                    const Text(
                      'Сдача: 6 000 сум',
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
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
                                'Готово',
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
            )
          : Center(
              child: Image.asset(
                'assets/images/loading.png',
                width: 83,
              ),
            ),
    );
  }
}
