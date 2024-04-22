import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'WebSocket Demo';
    return const MaterialApp(
      title: title,
      home: MyHomePage(
        title: title,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();

  Database? _database;

  @override
  void initState() {
    super.initState();
    _initializeDatabase();
  }

  Future<void> _initializeDatabase() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'example_database.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE example_table(id INTEGER PRIMARY KEY, name TEXT, value INTEGER)",
        );
      },
      version: 1,
    );
  }

  Future<void> _insertData() async {
    await _database!.insert(
      'example_table',
      {
        'name': 'John',
        'value': 52,
      },
    );
    setState(() {});
  }

  Future<List<Map<String, dynamic>>> _getData() async {
    return await _database!.query('example_table');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: _insertData,
              child: Text('Insert Data'),
            ),
            FutureBuilder<List<Map<String, dynamic>>>(
              future: _getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final data = snapshot.data as List;
                  return Column(
                    children: data.map((entry) {
                      return ListTile(
                        title: Text(entry['name']),
                        subtitle: Text(entry['value'].toString()),
                      );
                    }).toList(),
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }
                return CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Send message',
        child: const Icon(Icons.send),
      ),
    );
  }
}
