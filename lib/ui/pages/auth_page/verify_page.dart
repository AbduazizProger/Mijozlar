import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mijozlar/bloc/drawer_definer.dart';
import 'package:mijozlar/ui/widgets/auth_pages/verify_page_content.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  final TextEditingController _controller = TextEditingController();
  String codeText = '_____';
  int _remainingTime = 120;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final DrawerBloc drawerBloc = BlocProvider.of<DrawerBloc>(
      context,
      listen: false,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизоваться'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
      ),
      body: VerifyPageContent(
        codeText: codeText,
        drawerBloc: drawerBloc,
        controller: _controller,
        remainingTime: _remainingTime,
      ),
    );
  }
}
