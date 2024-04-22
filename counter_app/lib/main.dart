import 'package:counter_app/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int san = 0;

  void koshuu() {
    setState(() {
      san++;
    });
  }

  void kemituu() {
    setState(() {
      if (san > 0) {
        san--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff37DC6F),
        title: const Text(
          'Тапшырма',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff37DC6F),
                borderRadius: BorderRadius.circular(50),
              ),
              width: 250,
              height: 80,
              child: Center(
                child: Text(
                  '$san',
                  style: const TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    kemituu();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset: Offset.zero,
                        ),
                      ],
                    ),
                    width: 100,
                    height: 50,
                    child: const Icon(
                      Icons.remove,
                      size: 48,
                      color: Color(0xff379ADC),
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                // GestureDetector
                GestureDetector(
                  onTap: () {
                    koshuu();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset: Offset.zero,
                        ),
                      ],
                    ),
                    width: 100,
                    height: 50,
                    child: const Icon(
                      Icons.add,
                      size: 48,
                      color: Color(0xff379ADC),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen(count: san)),
          );
        },
        child: Container(
          width: double.infinity,
          height: 80,
          color: const Color(0xff37DC6F),
          child: const Icon(
            Icons.arrow_forward,
            size: 44,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
