import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/drawer/drawer_content.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 17),
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 28, 46, 126),
                ),
                child: const Icon(
                  CupertinoIcons.person_solid,
                  color: Color.fromARGB(255, 82, 94, 145),
                ),
              ),
              const Column(
                children: [
                  Text(
                    'Кассир №001',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '+998937000707',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ],
          ),
          const DrawerContent(),
        ],
      ),
    );
  }
}
