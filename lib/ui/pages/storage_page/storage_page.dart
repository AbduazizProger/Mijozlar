import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/storage/storage_item.dart';

class StoragePage extends StatelessWidget {
  const StoragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const [
          Column(
            children: [
              StorageItem(),
              StorageItem(),
              StorageItem(),
              StorageItem(),
              StorageItem(),
              StorageItem(),
              StorageItem(),
            ],
          ),
        ],
      ),
    );
  }
}
