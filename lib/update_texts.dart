import 'package:flutter/material.dart';
import 'mind_brain.dart';
import 'love_brain.dart';
import 'happy_brain.dart';
import 'mindfulness_brain.dart';

//MINDFULNESS BRAIN
MindfulnessBrain mindfulnessBrain = MindfulnessBrain();

class UpdateMindfulnessTexts extends StatefulWidget {
  @override
  UpdateMindfulnessTextsState createState() => UpdateMindfulnessTextsState();
}

class UpdateMindfulnessTextsState extends State {
  //String textHolder = '';

  void changeText() {
    setState(() {
      mindfulnessBrain.nextMessage();

      if (mindfulnessBrain.isFinished() == true) {
        mindfulnessBrain.reset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeText();
      },
      child: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              mindfulnessBrain.getMessageText(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Icon(Icons.touch_app_outlined, color: Colors.lightGreenAccent),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.5),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.elliptical(20, 20),
          ),
        ),
      ),
    );
  }
}

//MIND BRAIN
MindBrain mindBrain = MindBrain();

class UpdateMindTexts extends StatefulWidget {
  @override
  UpdateMindTextsState createState() => UpdateMindTextsState();
}

class UpdateMindTextsState extends State {
  void changeText() {
    setState(() {
      mindBrain.nextMessage();

      if (mindBrain.isFinished() == true) {
        mindBrain.reset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeText();
      },
      child: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              mindBrain.getMessageText(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Icon(Icons.touch_app_outlined, color: Colors.lightGreenAccent),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.5),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.elliptical(20, 20),
          ),
        ),
      ),
    );

    // style: OutlinedButton.styleFrom(
    //   padding: EdgeInsets.all(12),
    //   shape: BeveledRectangleBorder(
    //     borderRadius: BorderRadius.circular(15),
    //   ),
    //   backgroundColor: Colors.black.withOpacity(.5),
    // ),)

    //   Container(
    //   alignment: Alignment.topCenter,
    //   margin: EdgeInsets.all(13.0),
    //   padding: EdgeInsets.all(8.0),
    //   child: Container(
    //
    //     child: Text(
    //       mindBrain.getMessageText(),
    //       style: TextStyle(
    //         color: Colors.white,
    //         fontSize: 20,
    //       ),
    //       textAlign: TextAlign.center,
    //     ),
    //     style: OutlinedButton.styleFrom(
    //       padding: EdgeInsets.all(12),
    //       shape: BeveledRectangleBorder(
    //         borderRadius: BorderRadius.circular(15),
    //       ),
    //       backgroundColor: Colors.black.withOpacity(.5),
    //     ),
    //   ),
    // );
  }
}

//LOVE BRAIN
LoveBrain loveBrain = LoveBrain();

class UpdateLoveTexts extends StatefulWidget {
  @override
  UpdateLoveTextsState createState() => UpdateLoveTextsState();
}

class UpdateLoveTextsState extends State {
  //String textHolder = '';

  void changeText() {
    setState(() {
      loveBrain.nextMessage();

      if (loveBrain.isFinished() == true) {
        loveBrain.reset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeText();
      },
      child: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              loveBrain.getMessageText(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Icon(Icons.touch_app_outlined, color: Colors.lightGreenAccent),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.5),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.elliptical(20, 20),
          ),
        ),
      ),
    );
  }
}

//HAPPY BRAIN
HappyBrain happyBrain = HappyBrain();

class UpdateHappyTexts extends StatefulWidget {
  @override
  UpdateHappyTextsState createState() => UpdateHappyTextsState();
}

class UpdateHappyTextsState extends State {
  //String textHolder = '';

  void changeText() {
    setState(() {
      happyBrain.nextMessage();

      if (happyBrain.isFinished() == true) {
        happyBrain.reset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeText();
      },
      child: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              happyBrain.getMessageText(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Icon(Icons.touch_app_outlined, color: Colors.lightGreenAccent),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.5),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.elliptical(20, 20),
          ),
        ),
      ),
    );
  }
}
