import 'dart:developer';

import 'package:api_lesson_1/model/post_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PostModel> postModel = [];

  Future<void> fetchData() async {
    try {
      final response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      if (response.statusCode == 200) {
        for (var element in response.data) {
          final post = PostModel(
            userId: element['userId'],
            id: element['id'],
            title: element['title'],
            body: element['body'],
          );
          postModel.add(post);
          setState(() {});
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('API')),
      body: postModel.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: postModel.length,
              itemBuilder: (context, index) {
                final item = postModel[index];
                return Card(
                  color: Colors.blue,
                  child: ListTile(
                    leading: Text(
                      item.id.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    title: Text(
                      item.title,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    subtitle: Text(
                      item.title,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    trailing: Text(
                      item.userId.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
