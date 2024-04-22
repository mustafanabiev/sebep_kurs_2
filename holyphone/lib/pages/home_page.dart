import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff383838),
        title: const Text(
          'Flutter hylophone',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              AudioPlayer().play(AssetSource('notes/ginm.mp3'));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/do.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xffEF443A),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/re.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xffF99700),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/mi.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xffFFE93B),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/fa.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xff4DB050),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/sol.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xff2D968C),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/lya.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xff2896F5),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/si.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xff9B28B1),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/do2.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xff383838),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

bool a(int a) {
  return true;
}
