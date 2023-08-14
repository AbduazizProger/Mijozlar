import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/sale_page/card_money_enter.dart';
import 'package:mijozlar/ui/widgets/sale_page/cash_money_enter.dart';

class MixedPaymentPage extends StatelessWidget {
  const MixedPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController cashMoneycontroller = TextEditingController();
    final TextEditingController cardMoneycontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Смешанная оплата'),
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
              CashMoneyEnter(cashMoneycontroller: cashMoneycontroller),
              CardMoneyEnter(cardMoneycontroller: cardMoneycontroller),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  const Text(
                    'Осталось внести: 32 000',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
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
                          'Сохранить',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
