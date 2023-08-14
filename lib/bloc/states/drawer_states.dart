import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/clients_page/clients_page.dart';
import 'package:mijozlar/ui/pages/sale_page/sale_page.dart';
import 'package:mijozlar/ui/pages/auth_page/login_page.dart';

abstract class DrawerState {
  Widget get page => const LoginPage();
  Widget get title => const SizedBox();
  bool get hasAction => true;
  bool get hasFloatingAction => false;
}

class InitialPageState extends DrawerState {}

class PageState extends DrawerState {
  final Widget _page;
  final Widget _title;

  @override
  Widget get page => _page;

  @override
  Widget get title => _title;

  @override
  bool get hasAction => page is! SalePage;

  @override
  bool get hasFloatingAction => page is ClientsPage;

  PageState(this._page, this._title);
}
