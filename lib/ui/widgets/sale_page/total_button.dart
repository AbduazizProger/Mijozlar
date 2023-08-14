import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/sale_page/payment_page.dart';

class TotalButton extends StatelessWidget {
  const TotalButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
              return const PaymentPage();
            }));
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
                'Итого: 0 сум',
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
    );
  }
}
