import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/clients_page/all_clients.dart';
import 'package:mijozlar/ui/pages/clients_page/new_client_page.dart';

class ChooseClientPage extends StatelessWidget {
  const ChooseClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Покупатель'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
        ],
      ),
      body: const AllClients(),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(250, 38, 58, 150),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (_) {
                return const NewClientPage();
              },
            );
          },
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
