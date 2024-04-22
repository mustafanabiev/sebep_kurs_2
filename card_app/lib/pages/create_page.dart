import 'package:card_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameCtl = TextEditingController();
  final kesipCtl = TextEditingController();
  final phoneCtl = TextEditingController();
  final emailCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Визитка түзүү'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Атыңызды жазыңыз',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Сураныч атыңызды жазыңыз!!!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 18),
              TextFormField(
                controller: kesipCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Кесибиңизди жазыңыз',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Сураныч кесибиңизди жазыңыз!!!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 18),
              TextFormField(
                controller: phoneCtl,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Номериңизди жазыңыз',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Сураныч номериңизди жазыңыз!!!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 18),
              TextFormField(
                controller: emailCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email ди жазыңыз',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Сураныч email ди жазыңыз!!!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 18),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(
                            name: nameCtl.text,
                            kesip: kesipCtl.text,
                            phone: phoneCtl.text,
                            email: emailCtl.text,
                          ),
                        ),
                      ).then((value) {
                        nameCtl.clear();
                        kesipCtl.clear();
                        phoneCtl.clear();
                        emailCtl.clear();
                      });
                    }
                  },
                  child: const Text('Жөнөтүү'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
