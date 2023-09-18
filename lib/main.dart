import 'package:flutter/material.dart';
import 'package:flutter_application_3/increment.dart';
import 'package:flutter_application_3/state.dart';
import 'package:flutter_application_3/text_field.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: "/", page: () => const MyApp()),
        GetPage(name: "/state", page: () => const StateManagement()),
        GetPage(name: "/increment", page: () => const IncrementPage()),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset('images/logo.png')],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const StateManagement());
                      },
                      child: Container(
                        height: 132,
                        width: 132,
                        decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Obx GetBuilder",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const FormTextField());
                      },
                      child: Container(
                        height: 132,
                        width: 132,
                        decoration: BoxDecoration(
                          color: Colors.orange.shade300,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Snackbat, Dialog BottomSheet",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 42,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 132,
                      width: 132,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(14),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Named Navigation",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    GestureDetector(
                      // onTap: () {
                      //   Get.to(() => const StateManagement());
                      // },
                      child: Container(
                        height: 132,
                        width: 132,
                        decoration: BoxDecoration(
                          color: Colors.green.shade300,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Dependency Management",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
