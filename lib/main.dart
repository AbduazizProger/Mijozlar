import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mijozlar/bloc/drawer_definer.dart';
import 'package:mijozlar/ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DrawerBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Montserrat',
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(250, 38, 58, 150),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
