import 'package:flutter/material.dart';

class CheckList extends StatelessWidget {
  const CheckList({
    super.key,
    required this.items,
    required this.selected,
  });

  final List<String> items;
  final int selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: items.length == 11
          ? 650
          : items.length == 7
              ? 450
              : 220,
      padding: const EdgeInsets.all(30),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 353,
                height: 53,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      items[index],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      index == selected
                          ? Icons.radio_button_on
                          : Icons.radio_button_off,
                      color: index == selected ? Colors.blue[900] : null,
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: 353,
                color: Colors.grey[350],
              )
            ],
          );
        },
      ),
    );
  }
}
