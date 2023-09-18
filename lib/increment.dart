import 'package:flutter/material.dart';
import 'controller/textfield_controller.dart';
import 'package:get/get.dart';


class IncrementPage extends StatelessWidget {
  const IncrementPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextFieldController textFieldController = TextFieldController();

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () => textFieldController.addAngka(),icon: const Icon(Icons.add)),
            Obx(() => Text(textFieldController.angka.value.toString())),
            IconButton(onPressed: () => textFieldController.removeAngka(),icon: const Icon(Icons.remove)),
          ],
        ),
     ),
    );
  }
}