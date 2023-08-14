import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/clients_page/client_item.dart';

class AllClients extends StatelessWidget {
  const AllClients({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ClientItem(),
        ClientItem(),
        ClientItem(),
        ClientItem(),
        ClientItem(),
        ClientItem(),
        ClientItem(),
        ClientItem(),
        ClientItem(),
        ClientItem(),
        ClientItem(),
      ],
    );
  }
}
