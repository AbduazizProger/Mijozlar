import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/sale_page/action_buttons.dart';
import 'package:mijozlar/ui/widgets/sale_page/price_number_editor.dart';
import 'package:mijozlar/ui/widgets/sale_page/summary_widget.dart';

class SaleItemEditor extends StatelessWidget {
  const SaleItemEditor({
    super.key,
    required this.priceController,
  });

  final TextEditingController priceController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/product.png',
                width: 110,
              ),
            ),
            const Center(
              child: Text(
                'Crafers Milk Chocolate 90г',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.cube_box_fill,
                  color: Colors.grey,
                ),
                Text(
                  '350',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: PriceNumberEditor(priceController: priceController),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20, top: 13),
                child: SummaryWidget(),
              ),
            ),
            const ActionButtons()
          ],
        ),
      ),
    );
  }
}
