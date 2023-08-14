import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/sale_page/another_money_page.dart';
import 'package:mijozlar/ui/pages/sale_page/mixed_payment_page.dart';

class PaymentType extends StatelessWidget {
  const PaymentType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              CupertinoPageRoute(builder: (_) {
                return const MixedPaymentPage();
              }),
            );
          },
          child: Container(
            width: 172,
            height: 90,
            margin: const EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.blue,
            ),
            child: const Center(
              child: Text(
                'Смешанная \nоплата',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              CupertinoPageRoute(builder: (_) {
                return const AnotherMoneyPage();
              }),
            );
          },
          child: Container(
            width: 172,
            height: 90,
            margin: const EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.blue,
            ),
            child: const Center(
              child: Text(
                'Другая \nсумма',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
