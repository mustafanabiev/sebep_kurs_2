import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.isTrue,
    required this.baskanda,
  });

  final bool isTrue;
  final void Function(bool) baskanda;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () => baskanda(isTrue),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: isTrue == true
              ? const Color(0xff4DB050)
              : const Color(0xffEF443A),
        ),
        child: Text(
          isTrue == true ? 'Туура' : 'Туура эмес',
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // Color colora() {
  //   bool value = false;
  //   // ? --> if
  //   if (value == true) {
  //     return const Color(0xff4DB050);
  //   }
  //   // : --> else
  //   else {
  //     return const Color(0xffEF443A);
  //   }
  // }
}
