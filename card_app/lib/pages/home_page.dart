import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.name,
    required this.kesip,
    required this.phone,
    required this.email,
  });

  final String name;
  final String kesip;
  final String phone;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Тапшырма 4',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: const Color(0xff056C5C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/images/sadyrjaparov.jpeg'),
            ),
            Text(
              // 'Nabiev Mustafa',
              name,
              style: const TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 48,
                color: Colors.white,
              ),
            ),
            Text(
              // 'Flutter Developer',
              kesip,
              style: const TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const Divider(
              indent: 70,
              endIndent: 70,
              height: 2,
              thickness: 2.5,
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 30),
                  const Icon(
                    Icons.phone_outlined,
                    size: 28,
                    color: Color(0xff056C5C),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    '+996 $phone',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xff056C5C),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 30),
                  const Icon(
                    Icons.email_outlined,
                    size: 28,
                    color: Color(0xff056C5C),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xff056C5C),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
