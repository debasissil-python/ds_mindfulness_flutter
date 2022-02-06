import 'package:flutter/material.dart';

class EmotionButtons extends StatelessWidget {
  EmotionButtons({this.emotionTexts, this.onPress});

  final Widget? emotionTexts;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {onPress?.call()},
      child: emotionTexts,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<StadiumBorder>(
          StadiumBorder(
            side: BorderSide(color: Colors.white),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          Colors.black.withOpacity(.5),
        ),
        overlayColor: MaterialStateProperty.all(
          Colors.blueAccent,
        ),
      ),
    );
  }
}
