import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mijozlar/bloc/drawer_definer.dart';
import 'package:mijozlar/bloc/states/drawer_states.dart';

class PageDefiner extends StatelessWidget {
  const PageDefiner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerBloc, DrawerState>(builder: (context, state) {
      return state.page;
    });
  }
}
