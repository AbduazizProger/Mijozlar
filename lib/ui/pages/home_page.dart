import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mijozlar/ui/pages/drawer/drawer_page.dart';
import 'package:mijozlar/bloc/drawer_definer.dart';
import 'package:mijozlar/ui/pages/auth_page/login_page.dart';
import 'package:mijozlar/components/page_definer.dart';
import 'package:mijozlar/bloc/states/drawer_states.dart';
import 'package:mijozlar/ui/pages/clients_page/new_client_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerBloc, DrawerState>(
      builder: (context, state) {
        if (state is InitialPageState) {
          return const LoginPage();
        } else {
          return Scaffold(
            appBar: AppBar(
              title: state.title,
              backgroundColor: const Color.fromARGB(0, 250, 250, 250),
              centerTitle: true,
              leading: Builder(builder: (context) {
                return IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Image.asset(
                    'assets/images/drawer.png',
                    width: 32,
                    height: 32,
                  ),
                );
              }),
              actions: [
                state.hasAction
                    ? IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.search),
                      )
                    : const SizedBox(),
              ],
            ),
            drawer: const Drawer(
              backgroundColor: Color.fromARGB(255, 38, 58, 150),
              child: DrawerPage(),
            ),
            body: const PageDefiner(),
            backgroundColor: const Color.fromARGB(240, 250, 250, 250),
            floatingActionButton: state.hasFloatingAction
                ? ClipRRect(
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
                  )
                : null,
          );
        }
      },
    );
  }
}
