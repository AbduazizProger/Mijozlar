import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsSearchWidget extends StatelessWidget {
  const ItemsSearchWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(CupertinoIcons.search),
        suffixIcon: SizedBox(
          width: 5,
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(color: Colors.grey, width: 2, height: 20),
                    const SizedBox(width: 5),
                    const Icon(
                      CupertinoIcons.barcode_viewfinder,
                      color: Color.fromARGB(255, 38, 58, 150),
                      size: 33,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
