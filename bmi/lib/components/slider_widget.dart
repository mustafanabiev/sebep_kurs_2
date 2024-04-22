import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
    required this.currentSliderValue,
    required this.onChanged,
  });

  final double currentSliderValue;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 10),
          color: const Color(0xff0B0120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'HEIGHT',
                style: TextStyle(
                  color: Color(0xffCECCD2),
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${currentSliderValue.toInt()}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 54,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                  const Text(
                    'cm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
              Slider(
                value: currentSliderValue,
                max: 300,
                activeColor: Colors.white,
                inactiveColor: const Color(0xff888888),
                thumbColor: const Color(0xffFF0F65),
                label: currentSliderValue.round().toString(),
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
