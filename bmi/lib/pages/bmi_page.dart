import 'dart:math';

import 'package:bmi/components/slider_widget.dart';
import 'package:bmi/components/status_card.dart';
import 'package:bmi/components/weight_age_widget.dart';
import 'package:bmi/utils/alert_dialog.dart';
import 'package:flutter/material.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  bool isSelect = false;
  double currentSliderValue = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff221935),
      appBar: AppBar(
        backgroundColor: const Color(0xff221935),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                StatusCard(
                  icon: Icons.male,
                  text: 'MALE',
                  isSelect: isSelect,
                  onTap: () {
                    setState(() {
                      isSelect = false;
                    });
                  },
                ),
                StatusCard(
                  icon: Icons.female,
                  text: 'FEMALE',
                  isSelect: !isSelect,
                  onTap: () {
                    setState(() {
                      isSelect = true;
                    });
                  },
                ),
              ],
            ),
          ),
          SliderWidget(
            currentSliderValue: currentSliderValue,
            onChanged: (double value) {
              setState(() {
                currentSliderValue = value;
              });
            },
          ),
          Expanded(
            child: Row(
              children: [
                WeightAgeWidget(
                  onPressedRemove: () {
                    setState(() {
                      weight--;
                    });
                  },
                  onPressedAdd: () {
                    setState(() {
                      weight++;
                    });
                  },
                  text: 'WEIGHT',
                  value: '$weight',
                ),
                WeightAgeWidget(
                  onPressedRemove: () {
                    setState(() {
                      age--;
                    });
                  },
                  onPressedAdd: () {
                    setState(() {
                      age++;
                    });
                  },
                  text: 'AGE',
                  value: '$age',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          final result = weight / pow(currentSliderValue / 100, 2);
          if (result < 18.5) {
            dialogBuilder(
              context,
              title: 'Арык 🍜',
              result: '${result.toInt()}',
              description: 'Сиздин салмагыңыз аз. Салмак топтоңуз! 🍜',
              color: Colors.blue,
            );
          } else if (result >= 18.5 && result < 24.9) {
            dialogBuilder(
              context,
              title: 'Нормалдуу 👍',
              result: '${result.toInt()}',
              description: 'Сиздин дене салмагыңыз нормалдуу. Азаматсыз! 👍',
              color: Colors.green,
            );
          } else {
            dialogBuilder(
              context,
              title: 'Салмак көп 🏃',
              result: '${result.toInt()}',
              description:
                  'Сиздин дене салмагыңыз көп. Спорт менен алектениңиз! 🏃',
              color: const Color(0xffFF0F65),
            );
          }
        },
        child: Container(
          width: double.infinity,
          height: 70,
          color: const Color(0xffFF0F65),
          child: const Center(
            child: Text(
              'CALCULATOR',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
