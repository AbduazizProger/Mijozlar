import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/sale_page/sale_item.dart';
import 'package:mijozlar/ui/widgets/sale_page/sale_item_editor.dart';

class SaleItems extends StatelessWidget {
  const SaleItems({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController priceController = TextEditingController();
    return ListView.builder(
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (_) {
                return SaleItemEditor(priceController: priceController);
              },
            );
          },
          child: const SaleItem(),
        );
      },
    );
  }
}
