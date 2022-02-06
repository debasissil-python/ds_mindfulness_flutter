import 'messages.dart';

class MindfulnessBrain {
  int mindfulnessMessageNumber = 0;

  List<Messages> mindfulnessMessageBank = [
    Messages("Mind is the EPICENTER of all my Emotions."),
    Messages(
        "Whatever is my 'State of Mind', will determine my 'State of Being' "),
    Messages(
        "A mental state achieved by focusing my awareness on the present moment, while calmly acknowledging and accepting other's feelings and thoughts"),
    Messages(
        'I must be aware of what I think as it will determine my thoughts for others and will come out as I speak'),
    Messages(
        'I must take control of my mind otherwise my mind will control me'),
    Messages('Click any of the Emotion Buttons below to know more'),
  ];

  void nextMessage() {
    if (mindfulnessMessageNumber < mindfulnessMessageBank.length) {
      mindfulnessMessageNumber++;
    }
  }

  String getMessageText() {
    return mindfulnessMessageBank[mindfulnessMessageNumber].messageText;
  }

  bool isFinished() {
    if (mindfulnessMessageNumber == mindfulnessMessageBank.length) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    mindfulnessMessageNumber = 0;
  }
}
