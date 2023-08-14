import 'package:flutter/material.dart';
import 'package:mijozlar/bloc/drawer_definer.dart';
import 'package:mijozlar/bloc/events/drawer_events.dart';

class VerifyCheckButton extends StatelessWidget {
  const VerifyCheckButton({
    super.key,
    required this.drawerBloc,
  });

  final DrawerBloc drawerBloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 40),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {
            drawerBloc.add(SalePageEvent());
            Navigator.of(context).pop();
          },
          child: Container(
            width: 353,
            height: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 38, 58, 150),
            ),
            child: const Center(
              child: Text(
                'Проверить',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
