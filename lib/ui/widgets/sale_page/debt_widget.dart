import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/sale_page/for_debt_page.dart';
import 'package:mijozlar/ui/pages/sale_page/installment_page.dart';

class DebtWidget extends StatelessWidget {
  const DebtWidget({
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
                return const ForDebtPage();
              }),
            );
          },
          child: Container(
            width: 172,
            height: 90,
            margin: const EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.blue[900],
            ),
            child: const Center(
              child: Text(
                'В долг',
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
                return const InstallmentPage();
              }),
            );
          },
          child: Container(
            width: 172,
            height: 90,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.blue[900],
            ),
            child: const Center(
              child: Text(
                'Рассрочка',
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
