import 'messages.dart';

class MindBrain {
  int mindMessageNumber = 0;

  List<Messages> mindMessageBank = [
    Messages('What is Mind ?'),
    Messages(
        'There are Two Worlds I live in - \nThe Outer World and the Inner World'),
    Messages(
        'Take few minutes to introspect if my inner world is influenced by situations of my outer world'),
    Messages(
        'If anything happens outside, is my inner foundation strong enough to be unshakable'),
    Messages(
        'My thoughts must be Pure, Powerful and Good \n No matter what situation I am in'),
    Messages(
        'People can hurt me, insult me, humiliate me but I can only hurt myself by taking those thoughts inside my mind '),
    Messages(
        'There is only one thing which will always be my way, My Thinking. \n So I change my thinking to live a blissful life'),
    Messages('Always create good thoughts no matter what'),
    Messages('Click any of the Emotion Buttons below to know more'),
  ];

  void nextMessage() {
    if (mindMessageNumber < mindMessageBank.length) {
      mindMessageNumber++;
    }
  }

  String getMessageText() {
    return mindMessageBank[mindMessageNumber].messageText;
  }

  bool isFinished() {
    if (mindMessageNumber == mindMessageBank.length) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    mindMessageNumber = 0;
  }
}
