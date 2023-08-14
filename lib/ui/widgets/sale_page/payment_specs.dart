import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/sale_page/debt_widget.dart';
import 'package:mijozlar/ui/widgets/sale_page/money_type.dart';
import 'package:mijozlar/ui/widgets/sale_page/payment_widget.dart';

class PaymentSpecs extends StatelessWidget {
  const PaymentSpecs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12, top: 5),
          child: Text(
            'Счета',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        MoneyType(),
        Padding(
          padding: EdgeInsets.only(left: 12, top: 5),
          child: Text(
            'Тип оплаты',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        PaymentType(),
        Padding(
          padding: EdgeInsets.only(left: 12, top: 5),
          child: Text(
            'В долг',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        DebtWidget(),
      ],
    );
  }
}
