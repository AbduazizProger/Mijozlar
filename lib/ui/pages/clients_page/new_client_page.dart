import 'package:flutter/material.dart';
import 'package:mijozlar/ui/widgets/clients_page/client_edits.dart';

class NewClientPage extends StatelessWidget {
  const NewClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController(
      text: '+998',
    );
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Добавление килента'),
          leading: const SizedBox(),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
            ),
          ],
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClientDitails(
              nameController: nameController,
              phoneController: phoneController,
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 353,
                height: 63,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 38, 58, 150),
                ),
                child: const Center(
                  child: Text(
                    'Создание',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
