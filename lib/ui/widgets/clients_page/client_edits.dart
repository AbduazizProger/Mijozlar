import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/clients_page/all_check_lists.dart';
import 'package:mijozlar/ui/widgets/clients_page/name_edit_widget.dart';
import 'package:mijozlar/ui/widgets/clients_page/number_edit_widget.dart';

class ClientDitails extends StatefulWidget {
  const ClientDitails({
    super.key,
    required this.nameController,
    required this.phoneController,
  });

  final TextEditingController nameController;
  final TextEditingController phoneController;

  @override
  State<ClientDitails> createState() => _ClientDitailsState();
}

class _ClientDitailsState extends State<ClientDitails> {
  int selected1 = 0;
  int selected2 = 0;
  final List<String> regions = [
    'Город Ташкент',
    'Ферганская область',
    'Ташкентская область',
    'Сырдарьинская область',
    'Сурхандарьинская область',
    'Наманганская область',
    'Навоийская область',
    'Кашкадарьинская область',
    'Джизакская область',
    'Бухарская область',
    'Андижанская область',
  ];
  final List<String> status = [
    'Vip',
    'Silver',
    'Simple',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: NameEditWidget(nameController: widget.nameController),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: NumberEditWidget(phoneController: widget.phoneController),
        ),
        AllCheckLists(
          regions: regions,
          selected1: selected1,
          status: status,
          selected2: selected2,
        ),
      ],
    );
  }
}
