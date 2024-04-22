import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_model.dart';
import 'package:quiz_app/widgets/custom_button.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int index = 0;
  List<bool> jooptor = [];
  List<bool> tuuraJooptor = [];
  List<bool> kataJooptor = [];

  void teksher({required bool joop}) {
    if (suroolor[index].answer == joop) {
      jooptor.add(true);
      tuuraJooptor.add(true);
    } else {
      jooptor.add(false);
      kataJooptor.add(false);
    }
    setState(() {
      if (suroolor[index] == suroolor.last) {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Тесттин жообу'),
              content: Text(
                'Жалпы суроолордук саны: ${jooptor.length}\n'
                'Туура жооптор: ${tuuraJooptor.length}\n'
                'Ката жооптор: ${kataJooptor.length}\n',
              ),
              actions: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text('Кайра баштоо'),
                  onPressed: () {
                    setState(() {
                      index = 0;
                      jooptor.clear();
                      tuuraJooptor.clear();
                      kataJooptor.clear();
                    });
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Тапшырма 7',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff383838),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 63),
                child: Text(
                  suroolor[index].question,
                  style: const TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 100),
              CustomButton(
                baskanda: (value) {
                  teksher(joop: value);
                },
                isTrue: true,
              ),
              const SizedBox(height: 20),
              CustomButton(
                baskanda: (value) {
                  teksher(joop: value);
                },
                isTrue: false,
              ),
              const Spacer(),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: jooptor.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return jooptor[index] == true
                        ? const ResultIcon(isTrue: true)
                        : const ResultIcon(isTrue: false);
                  },
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}

class ResultIcon extends StatelessWidget {
  const ResultIcon({
    super.key,
    required this.isTrue,
  });

  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return Icon(
      isTrue == true ? Icons.check : Icons.close,
      size: 32,
      color: isTrue == true ? const Color(0xff4DB050) : const Color(0xffEF443A),
    );
  }
}
