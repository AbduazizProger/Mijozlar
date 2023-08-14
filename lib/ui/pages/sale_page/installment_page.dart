import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/clients_page/choose_client_page.dart';
import 'package:mijozlar/ui/widgets/sale_page/choose_client.dart';
import 'package:mijozlar/ui/widgets/sale_page/date_for_return_debt.dart';
import 'package:mijozlar/ui/widgets/sale_page/debted_widget.dart';
import 'package:mijozlar/ui/widgets/sale_page/each_month_pay.dart';
import 'package:mijozlar/ui/widgets/sale_page/how_much_month.dart';
import 'package:mijozlar/ui/widgets/sale_page/how_much_you_get_widget.dart';
import 'package:mijozlar/ui/widgets/sale_page/type_of_check.dart';

class InstallmentPage extends StatelessWidget {
  const InstallmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController youGetController = TextEditingController();
    final TextEditingController monthPayController = TextEditingController();
    final TextEditingController oweController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Рассрочка'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
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
                    ],
                  ),
                ),
                const HowMuchMonth(),
                HowMuchYouGetWidget(youGetController: youGetController),
                const DateForReturnDebt(),
                DebtedWidget(oweController: oweController),
                const TypeOfCheck(),
                EachMonthPay(monthPayController: monthPayController),
              ],
            ),
            Container(
              width: 353,
              height: 64,
              margin: const EdgeInsets.only(top: 30, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 38, 58, 150),
              ),
              child: const Center(
                child: Text(
                  'Продажа',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
