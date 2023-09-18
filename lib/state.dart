import 'package:flutter/material.dart';
import 'package:flutter_application_3/get_builder.dart';
import 'package:flutter_application_3/sum_xy.dart';
import 'package:get/get.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
               Get.to(() => const GetBuilderPage());
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 24, right: 24),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: Colors.yellow.shade400,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  "Get Builder",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 24, right: 24),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: Colors.yellow.shade400,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  "Obx",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const SumXy());
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 24, right: 24),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade400,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Text(
                  "SUM XY",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
