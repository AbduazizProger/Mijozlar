import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/sale_page/discount_number.dart';

class ChooseDiscountPage extends StatefulWidget {
  const ChooseDiscountPage({super.key});

  @override
  State<ChooseDiscountPage> createState() => _ChooseDiscountPageState();
}

class _ChooseDiscountPageState extends State<ChooseDiscountPage> {
  int choosedFormat = 0;
  @override
  Widget build(BuildContext context) {
    final TextEditingController discountController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Скидка на чек'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Скидка',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Row(
                  children: [
                    DiscountNumber(discountController: discountController),
                    const SizedBox(width: 15),
                    Container(
                      width: 188,
                      height: 59,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              choosedFormat = 0;
                              setState(() {});
                            },
                            child: Container(
                              width: 88,
                              height: 51,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: choosedFormat == 0
                                    ? Colors.blue[900]
                                    : null,
                              ),
                              child: Transform.scale(
                                scale: 0.7,
                                child: Image.asset(
                                  'assets/images/card.png',
                                  color: choosedFormat == 0
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              choosedFormat = 1;
                              setState(() {});
                            },
                            child: Container(
                              width: 88,
                              height: 51,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: choosedFormat == 1
                                    ? Colors.blue[900]
                                    : null,
                              ),
                              child: Transform.scale(
                                scale: 0.7,
                                child: Image.asset(
                                  'assets/images/moneys.png',
                                  color: choosedFormat == 0
                                      ? Colors.grey
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(35),
                  child: Center(
                    child: Text(
                      'Итого: 36 000',
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
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
          ],
        ),
      ),
    );
  }
}
