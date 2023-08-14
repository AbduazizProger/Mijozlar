import 'package:flutter/material.dart';

class HowMuchYouGetWidget extends StatelessWidget {
  const HowMuchYouGetWidget({
    super.key,
    required this.youGetController,
  });

  final TextEditingController youGetController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 7,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Сколко вы получили? ',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          TextField(
            controller: youGetController,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 20),
            decoration: InputDecoration(
              hintText: '0',
              hintStyle: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
              filled: true,
              fillColor: Colors.grey[300],
              contentPadding: const EdgeInsets.all(20),
              suffixIcon: const SizedBox(
                width: 15,
                height: 15,
                child: Center(
                  child: Text(
                    'сум  ',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
