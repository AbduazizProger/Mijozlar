import 'package:flutter/material.dart';
import 'package:mijozlar/components/format_text.dart';

class VerifyEditor extends StatefulWidget {
  const VerifyEditor(
      {super.key, required this.codeText, required this.controller});

  final String codeText;
  final TextEditingController controller;

  @override
  State<VerifyEditor> createState() => _VerifyEditorState();
}

class _VerifyEditorState extends State<VerifyEditor> {
  String codeText = '';
  @override
  void initState() {
    super.initState();
    codeText = widget.codeText;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: TextField(
              maxLength: 5,
              autofocus: true,
              showCursor: false,
              controller: widget.controller,
              keyboardType: TextInputType.number,
              onChanged: (value) => setState(() {
                codeText = value + returnString(5 - value.length);
              }),
              style: const TextStyle(color: Colors.transparent),
              decoration: const InputDecoration(
                filled: true,
                counterText: '',
                fillColor: Colors.transparent,
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: codeText.split('')[index] == '_'
                      ? const Color.fromARGB(255, 216, 216, 216)
                      : const Color.fromARGB(250, 38, 58, 150),
                ),
                child: Center(
                  child: Text(
                    codeText.split('')[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: codeText.split('')[index] != '_'
                          ? Colors.white
                          : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
