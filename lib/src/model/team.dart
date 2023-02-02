class Team {

  int teamId =0;
  String name="";
  String shortName="";
  String logoUrl="";
  String thumbUrl="";
  String scoresFull="";
  String scores="";
  String overs="";

  Team({
      required this.teamId,
      required this.name,
      required this.shortName,
      required this.logoUrl,
      required this.thumbUrl,
      required this.scoresFull,
      required this.scores,
      required this.overs,});

  Team.fromJson(dynamic json) {
    teamId = json['team_id']??"";
    name = json['name']??"";
    shortName = json['short_name']??"";
    logoUrl = json['logo_url']??"";
    thumbUrl = json['thumb_url']??"";
    scoresFull = json['scores_full']??"";
    scores = json['scores']??"";
    overs = json['overs']??"";
  }

  Team.newTeam();


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['team_id'] = teamId;
    map['name'] = name;
    map['short_name'] = shortName;
    map['logo_url'] = logoUrl;
    map['thumb_url'] = thumbUrl;
    map['scores_full'] = scoresFull;
    map['scores'] = scores;
    map['overs'] = overs;
    return map;
  }

}