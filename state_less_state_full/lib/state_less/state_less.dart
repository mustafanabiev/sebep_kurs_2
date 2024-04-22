import 'dart:developer';

import 'package:flutter/material.dart';

class MyStateLessWidget extends StatelessWidget {
  MyStateLessWidget({super.key});

  int san = 0;

  void koshuu() {
    // setState(() {
    san++;
    log(san.toString());
    // });
  }

  void minus() {
    // setState(() {
    san--;
    log(san.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatelessWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$san',
              style: const TextStyle(fontSize: 60),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: minus,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: koshuu,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
