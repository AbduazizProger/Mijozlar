import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/clients_page/choose_client_page.dart';
import 'package:mijozlar/ui/widgets/sale_page/choose_client.dart';
import 'package:mijozlar/ui/widgets/sale_page/date_for_return.dart';
import 'package:mijozlar/ui/widgets/sale_page/how_much_you_get.dart';
import 'package:mijozlar/ui/widgets/sale_page/owed_widget.dart';

class ForDebtPage extends StatelessWidget {
  const ForDebtPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController youGetController = TextEditingController();
    final TextEditingController oweController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('В долг'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
      ),
      body: Column(
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 7,
                ),
                child: HowMuchYouGet(youGetController: youGetController),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 7,
                ),
                child: DateForReturn(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 7,
                ),
                child: OwedWidget(oweController: oweController),
              ),
            ],
          ),
          Container(
            width: 353,
            height: 64,
            margin: const EdgeInsets.only(bottom: 30),
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
    );
  }
}
