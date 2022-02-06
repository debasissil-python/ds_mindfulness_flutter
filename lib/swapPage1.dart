import 'package:flutter/material.dart';
import 'emotion_buttons.dart';
import 'love_brain.dart';
import 'fuelledBy.dart';
import 'openingInfo.dart';
import 'constants.dart';
import 'update_texts.dart';

LoveBrain loveBrain = LoveBrain();

class SwapPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.home_outlined),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
        backgroundColor: Color(0xFF000009),
        centerTitle: true,
        title: Text(
          'Mindfulness',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/love.jpg"), fit: BoxFit.cover),
        ),
        padding: EdgeInsets.fromLTRB(15, 0, 15, 2),
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: OpeningInfo(
                Text(
                  'Love - \n The Eternal Bond',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            UpdateLoveTexts(),
            // Container(
            //   alignment: Alignment.topCenter,
            //   margin: EdgeInsets.all(10.0),
            //   padding: EdgeInsets.all(8.0),
            //   child: Text(
            //     'Love Every Soul \n Not the body',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 20,
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            //   decoration: BoxDecoration(
            //     color: Colors.black.withOpacity(.2),
            //     border: Border.all(
            //         //color: Color(0xFF245396),
            //         ),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(15),
            //     ),
            //   ),
            // ),
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
