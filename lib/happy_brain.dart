import 'messages.dart';

class HappyBrain {
  int happyMessageNumber = 0;

  List<Messages> happyMessageBank = [
    Messages('What is Happiness?'),
    Messages(
        "Happiness is a 'state of mind' where my Mind is Calm and Peaceful. It is not dependent on any external situation or person"),
    Messages('If I am not creating any disturbance inside I am Happy'),
    Messages(
        'I want a Happy World so I have be very careful in what I am Thinking or Saying'),
    Messages(
        "I can't chant any low energy mantras like 'I am stressed' and be Happy"),
    Messages(
        'What I say is a manifestation of my thoughts, so I must think Happy and Positive things no matter what my situation is'),
    Messages(
        "Most of the time I'm Happy but there are times when my mind shifts and suddenly a series of waste thoughts flood my mind. I allow my mind to drown in those thoughts. That's when I become unhappy."),
    Messages('Do not let any situation deplete my happiness'),
    Messages(
      'Click any of the Emotion Buttons below to know more',
    ),
  ];

  void nextMessage() {
    if (happyMessageNumber < happyMessageBank.length) {
      happyMessageNumber++;
    }
  }

  String getMessageText() {
    return happyMessageBank[happyMessageNumber].messageText;
  }

  bool isFinished() {
    if (happyMessageNumber == happyMessageBank.length) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    happyMessageNumber = 0;
  }
}
