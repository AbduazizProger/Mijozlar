import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/clients_page/check_list.dart';
import 'package:mijozlar/ui/widgets/clients_page/region_widget.dart';
import 'package:mijozlar/ui/widgets/clients_page/status_widget.dart';

class AllCheckLists extends StatelessWidget {
  const AllCheckLists({
    super.key,
    required this.regions,
    required this.selected1,
    required this.status,
    required this.selected2,
  });

  final List<String> regions;
  final int selected1;
  final List<String> status;
  final int selected2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Регион',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (_) {
                      return CheckList(items: regions, selected: selected1);
                    },
                  );
                },
                child: const RegionWidget(),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Статус',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (_) {
                      return CheckList(items: status, selected: selected2);
                    },
                  );
                },
                child: const StatusWidget(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
