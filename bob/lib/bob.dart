class Bob {
  bool yell(String me) => me != me.toLowerCase() && me == me.toUpperCase();
  bool question(String me) => me.endsWith("?");
  bool silence(String me) => me.isEmpty;
  String response(String message) {
    final me = message.trim();
    if (yell(me) && question(me)) {
      return "Calm down, I know what I'm doing!";
    } else if (yell(me)) {
      return "Whoa, chill out!";
    } else if (question(me)) {
      return "Sure.";
    } else if (silence(me)) {
      return "Fine. Be that way!";
    } else {
      return "Whatever.";
    }
  }
}
