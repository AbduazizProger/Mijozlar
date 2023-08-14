import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mijozlar/bloc/events/drawer_events.dart';
import 'package:mijozlar/bloc/states/drawer_states.dart';
import 'package:mijozlar/ui/pages/clients_page/clients_page.dart';
import 'package:mijozlar/ui/pages/history_page/history_page.dart';
import 'package:mijozlar/ui/pages/sale_page/sale_page.dart';
import 'package:mijozlar/ui/pages/settings_page/settings_page.dart';
import 'package:mijozlar/ui/pages/storage_page/storage_page.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(InitialPageState()) {
    on<DrawerEvent>((event, emit) async {
      if (event is SalePageEvent) {
        emit(
          PageState(
            const SalePage(),
            Image.asset('assets/images/name_logo.png', width: 110, height: 24),
          ),
        );
      } else if (event is HistoryPageEvent) {
        emit(PageState(const HistoryPage(), const Text('История продаж')));
      } else if (event is StoragePageEvent) {
        emit(PageState(const StoragePage(), const Text('Склад')));
      } else if (event is ClientsPageEvent) {
        emit(PageState(const ClientsPage(), const Text('Киленты')));
      } else if (event is SettingsPageEvent) {
        emit(PageState(const SettingsPage(), const Text('Настройки')));
      } else {
        emit(InitialPageState());
      }
    });
  }
}
