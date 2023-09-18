import 'package:flutter/material.dart';
// import 'package:flutter_application_3/hasil_screen.dart';
import 'package:get/get.dart';

import 'controller/textfield_controller.dart';

class FormTextField extends StatefulWidget {
  const FormTextField({super.key});

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  @override
  Widget build(BuildContext context) {
    TextFieldController textFieldController = TextFieldController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    width: double.infinity,
                    height: 256,
                    decoration: const BoxDecoration(color: Colors.white60),
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () {
                              Get.toNamed("/increment");
                            },
                            child: const Text('increment page')),
                        TextButton(
                            onPressed: () {
                              Get.toNamed("/state");
                            },
                            child: const Text('comming soon'))
                      ],
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.menu),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 32, right: 32),
              child: TextField(
                controller: textFieldController.editingController,
                decoration: const InputDecoration(hintText: 'ketik sesuatu'),
                onSubmitted: (isi) {
                  Get.snackbar("Bronya", textFieldController.updateName(isi));
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Text(
                textFieldController.textName.value,
                style: TextStyle(
                  color: textFieldController.tog.value == true
                      ? Colors.green
                      : Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Text(textFieldController.tog.value == false
                        ? "Close"
                        : "Open"),
                  ),
                  Obx(
                    () => Switch(
                      value: textFieldController.tog.value,
                      activeColor: textFieldController.tog.value == true
                          ? Colors.green
                          : Colors.grey,
                      onChanged: (value) {
                        textFieldController.setToggle(value);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
