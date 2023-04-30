import 'package:flutter/material.dart';
import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Add ToDo",
              ),
            ),

            Row(
              children: [
                //save button
                MyButton(text: "Save", onPressed: onSave),
                //cancel button
                MyButton(text: "Cancle", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
