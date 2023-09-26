import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class dialogueBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  dialogueBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add new task'),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                myButton(
                  text: 'Save',
                  onPressed: onSave,
                ),
                SizedBox(width: 55),
                myButton(
                  text: 'Cancel',
                  onPressed: onCancel,
                )
              ],
            ),
          ],
        ),
        height: 120,
      ),
    );
  }
}
