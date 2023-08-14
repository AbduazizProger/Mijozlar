import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/clients_page/all_clients.dart';
import 'package:mijozlar/ui/pages/clients_page/debt_page.dart';
import 'package:mijozlar/ui/widgets/clients_page/clients_tabbar_widget.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Column(
        children: [
          ClientsTabBarWidget(),
          Expanded(
            child: TabBarView(
              children: [
                AllClients(),
                DebtPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
