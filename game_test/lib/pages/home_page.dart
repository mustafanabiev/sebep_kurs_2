import 'package:flutter/material.dart';
import 'package:game_test/model/continent_model.dart';
import 'package:game_test/pages/test_page.dart';
import 'package:game_test/widgets/custom_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
            color: const Color(0xff355CE5),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        title: const Text(
          'Capitalis of the World',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            height: 23.45 / 14.0,
          ),
        ),
        flexibleSpace: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Divider(
              color: Colors.black,
              height: 4.0,
              indent: 10,
              endIndent: 10,
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
        ),
        itemCount: continents.length,
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        itemBuilder: (context, index) {
          final item = continents[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                if (item.suroolor != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TestPage(suroolor: item.suroolor!),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Бул континентте суроо жок !!!'),
                    ),
                  );
                }
              },
              child: CustomCardWidget(
                title: item.title,
                image: item.image,
              ),
            ),
          );
        },
      ),
    );
  }
}
