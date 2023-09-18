import 'package:flutter/material.dart';

class GetBuilderPage extends StatefulWidget {
  const GetBuilderPage({super.key});

  @override
  State<GetBuilderPage> createState() => _GetBuilderPageState();
}

class _GetBuilderPageState extends State<GetBuilderPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Builder"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 24, right: 24),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: Colors.yellow.shade400,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  "0",
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
                  "increase",
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
                  "Decrease",
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
