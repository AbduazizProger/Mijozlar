import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mijozlar/ui/pages/clients_page/choose_client_page.dart';
import 'package:mijozlar/ui/pages/sale_page/choose_discount_page.dart';
import 'package:mijozlar/ui/widgets/sale_page/choose_client.dart';
import 'package:mijozlar/ui/widgets/sale_page/choose_discount.dart';
import 'package:mijozlar/ui/widgets/sale_page/payment_specs.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oплатa'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(builder: (_) {
                          return const ChooseClientPage();
                        }),
                      );
                    },
                    child: const ChooseClient(),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(builder: (_) {
                          return const ChooseDiscountPage();
                        }),
                      );
                    },
                    child: const ChooseDiscount(),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Итого: 40 000',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
              ),
            ),
            const PaymentSpecs(),
          ],
        ),
      ),
    );
  }
}
