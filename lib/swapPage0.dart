import 'package:flutter/material.dart';
import 'fuelledBy.dart';
import 'openingInfo.dart';
import 'emotion_buttons.dart';
import 'constants.dart';
import 'update_texts.dart';

class SwapPage0 extends StatelessWidget {
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
            color: Colors.blue,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 2),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color(0xFF000916),
          image: DecorationImage(
            image: AssetImage("images/mind1.gif"),
            fit: BoxFit.contain,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: OpeningInfo(
                Text(
                  'Mind - \n The Magical Web!',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            UpdateMindTexts(),
            // Container(
            //   alignment: Alignment.topCenter,
            //   margin: EdgeInsets.all(10.0),
            //   padding: EdgeInsets.all(8.0),
            //   child: Text(
            //     'Look Inside your mind and control it, You will never be Unhappy again. \nNo One can Hurt You, Except for you',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 20,
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            //   decoration: BoxDecoration(
            //     color: Colors.black.withOpacity(.3),
            //     border: Border.all(
            //       color: Color(0xFF245396),
            //     ),
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
