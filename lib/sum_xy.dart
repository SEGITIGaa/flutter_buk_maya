import 'package:flutter/material.dart';

class SumXy extends StatefulWidget {
  const SumXy({super.key});

  @override
  State<SumXy> createState() => _SumXyState();
}

class _SumXyState extends State<SumXy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SUM XY"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
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
                  "Nilai Y",
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
                  "Nilai X",
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
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Text(
                  "Jumalhkan total 0",
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
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Text(
                  "simpan ke list",
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
