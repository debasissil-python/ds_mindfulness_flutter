import 'package:flutter/material.dart';
import 'constants.dart';
import 'update_texts.dart';
import 'fuelledBy.dart';
import 'openingInfo.dart';
import 'emotion_buttons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/mindfulness1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            OpeningInfo(
              Text(
                'Welcome to Mindfulness',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            UpdateMindfulnessTexts(),
            Expanded(
              child: Text(''),
              flex: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EmotionButtons(
                  onPress: () {
                    Navigator.pushNamed(context, '/first');
                  },
                  emotionTexts: kMindText,
                ),
                EmotionButtons(
                  onPress: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  emotionTexts: kLoveText,
                ),
                EmotionButtons(
                  onPress: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  emotionTexts: kHappyText,
                ),
              ],
            ),
            Expanded(
              child: FuelledByInfo(),
            ),
          ],
        ),
      ),
    );
  }
}
