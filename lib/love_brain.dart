import 'messages.dart';

class LoveBrain {
  int loveMessageNumber = 0;

  List<Messages> loveMessageBank = [
    Messages('What is Love ?'),
    Messages('We feel Attachment is Love but in reality Detachment is Love'),
    Messages(
        'Attachment is my mind becoming dependant on their minds, being judgemental when things are not as per my feelings or want'),
    Messages(
        'Detachment does not mean Indifference or Carelessness. \n It simply means my mind is not dependent on the other persons behaviour'),
    Messages(
        'I can Love everybody in a much better way with no pain inflictions on all sides if I remain detached'),
    Messages('My Love does not change with the other persons behaviour'),
    Messages('Click any of the Emotion Buttons below to know more'),
  ];

  void nextMessage() {
    if (loveMessageNumber < loveMessageBank.length) {
      loveMessageNumber++;
    }
  }

  String getMessageText() {
    return loveMessageBank[loveMessageNumber].messageText;
  }

  bool isFinished() {
    if (loveMessageNumber == loveMessageBank.length) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    loveMessageNumber = 0;
  }
}
