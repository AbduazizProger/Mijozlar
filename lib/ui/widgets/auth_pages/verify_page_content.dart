import 'package:flutter/material.dart';
import 'package:mijozlar/bloc/drawer_definer.dart';
import 'package:mijozlar/components/format_time.dart';
import 'package:mijozlar/ui/widgets/auth_pages/verify_check_button.dart';
import 'package:mijozlar/ui/widgets/auth_pages/verify_editor.dart';

class VerifyPageContent extends StatelessWidget {
  const VerifyPageContent({
    super.key,
    required this.codeText,
    required this.remainingTime,
    required this.drawerBloc,
    required this.controller,
  });

  final String codeText;
  final int remainingTime;
  final DrawerBloc drawerBloc;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 353,
          height: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'КОД ПОДТВЕРЖДЕНИЯ',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Код отправлен на номер +998937000707',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).previousFocus();
                },
                child: VerifyEditor(
                  codeText: codeText,
                  controller: controller,
                ),
              ),
            ],
          ),
        ),
        VerifyCheckButton(drawerBloc: drawerBloc),
        Text(
          remainingTime == 0
              ? 'Повторная отправка кода'
              : formatTime(remainingTime),
          style: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(250, 38, 58, 150),
          ),
        ),
      ],
    );
  }
}
