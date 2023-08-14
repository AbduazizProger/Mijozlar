import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mijozlar/ui/pages/auth_page/verify_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController(
      text: '+998',
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизоваться'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: 353,
            height: 220,
            child: Column(
              children: [
                const Text(
                  'ДОБРО ПОЖАЛОВАТЬ К MIJOZLAR',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Введите свой номер телефона и получите SMS код',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
                TextField(
                  autofocus: true,
                  controller: textController,
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(builder: (_) {
                      return const VerifyPage();
                    }),
                  );
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
                      'Отправить',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
