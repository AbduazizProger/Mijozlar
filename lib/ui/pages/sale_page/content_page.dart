import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/sale_page/items_search_widget.dart';
import 'package:mijozlar/ui/widgets/sale_page/no_items_widget.dart';
import 'package:mijozlar/ui/widgets/sale_page/sale_items.dart';
import 'package:mijozlar/ui/widgets/sale_page/total_button.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  final TextEditingController controller = TextEditingController();
  bool hasContent = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ItemsSearchWidget(controller: controller),
              ),
              hasContent ? const SaleItems() : const NoItemsWidget(),
              const SizedBox(height: 150)
            ],
          ),
        ),
        const TotalButton(),
      ],
    );
  }
}
