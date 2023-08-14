import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mijozlar/bloc/drawer_definer.dart';
import 'package:mijozlar/bloc/events/drawer_events.dart';
import 'package:mijozlar/ui/pages/clients_page/clients_page.dart';
import 'package:mijozlar/ui/pages/history_page/history_page.dart';
import 'package:mijozlar/ui/pages/sale_page/sale_page.dart';
import 'package:mijozlar/ui/pages/settings_page/settings_page.dart';
import 'package:mijozlar/ui/pages/storage_page/storage_page.dart';
import 'package:mijozlar/ui/widgets/drawer/drawer_item.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final DrawerBloc drawerBloc = BlocProvider.of<DrawerBloc>(context);
    final Map<String, bool> isSelected = {
      'Продажа': drawerBloc.state.page is SalePage,
      'История продаж': drawerBloc.state.page is HistoryPage,
      'Склад': drawerBloc.state.page is StoragePage,
      'Киленты': drawerBloc.state.page is ClientsPage,
      'Настройки': drawerBloc.state.page is SettingsPage,
    };
    return Column(
      children: [
        const SizedBox(height: 50),
        GestureDetector(
          onTap: () {
            BlocProvider.of<DrawerBloc>(context).add(SalePageEvent());
            Navigator.of(context).pop();
          },
          child: DrawerItemWidget(
            name: 'Продажа',
            image: 'assets/images/basket.png',
            isSelected: isSelected['Продажа'] as bool,
          ),
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<DrawerBloc>(context).add(HistoryPageEvent());
            Navigator.of(context).pop();
          },
          child: DrawerItemWidget(
            name: 'История продаж',
            image: 'assets/images/time.png',
            isSelected: isSelected['История продаж'] as bool,
          ),
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<DrawerBloc>(context).add(StoragePageEvent());
            Navigator.of(context).pop();
          },
          child: DrawerItemWidget(
            name: 'Склад',
            image: 'assets/images/box.png',
            isSelected: isSelected['Склад'] as bool,
          ),
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<DrawerBloc>(context).add(ClientsPageEvent());
            Navigator.of(context).pop();
          },
          child: DrawerItemWidget(
            name: 'Киленты',
            image: 'assets/images/clients.png',
            isSelected: isSelected['Киленты'] as bool,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(15),
          width: 300,
          height: 1,
          color: const Color.fromARGB(255, 14, 36, 132),
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<DrawerBloc>(context).add(SettingsPageEvent());
            Navigator.of(context).pop();
          },
          child: DrawerItemWidget(
            name: 'Настройки',
            image: 'assets/images/settings.png',
            isSelected: isSelected['Настройки'] as bool,
          ),
        ),
        const DrawerItemWidget(
          name: 'Помощь',
          image: 'assets/images/help.png',
          isSelected: false,
        ),
        const DrawerItemWidget(
          name: 'Выйти',
          image: 'assets/images/exit.png',
          isSelected: false,
        ),
      ],
    );
  }
}
