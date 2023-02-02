class Toss {

  String text = "";
  int? winner;
  int? decision;

  Toss({
      required this.text,
      this.winner, 
      this.decision,});

  Toss.fromJson(dynamic json) {
    text = json['text'];
    winner = json['winner'];
    decision = json['decision'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['winner'] = winner;
    map['decision'] = decision;
    return map;
  }

}