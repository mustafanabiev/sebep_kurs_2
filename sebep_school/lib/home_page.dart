import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6237DC),
        title: const Text(
          'Sebep School',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/image.png'),
            const SizedBox(height: 20),
            const Text(
              'Sebep school',
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '''
Lorem Ipsum is simply dummy text 
of the printing and typesetting 
industry. Lorem Ipsum has been the 
industry's standard dummy text 
ever since the 1500s, when an 
unknown printer took a galley of 
type and scrambled it to make a 
type specimen book. It has survived 
not only five centuries, but also the 
leap into electronic typesetting, 
remaining essentially unchanged. It 
was popularised in the 1960s with 
''',
              style: TextStyle(
                fontFamily: 'Sofia',
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// body: ClipRRect(
//   borderRadius: BorderRadius.circular(100),
//   child: Image.asset(
//     'assets/images/download.png',
//     width: 200,
//     height: 200,
//     fit: BoxFit.cover,
//   ),
// ),