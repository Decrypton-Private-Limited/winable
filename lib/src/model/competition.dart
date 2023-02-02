class Competition {
  int cid=0;
  String title="";
  String abbr="";
  String type="";
  String category="";
  String matchFormat="";
  String status="";
  String season="";
  String dateStart="";
  String dateEnd="";
  String totalMatches="";
  String totalRounds="";
  String totalTeams="";
  String country="";




  Competition({
      required this.cid,
      required this.title,
      required this.abbr,
      required this.type,
      required this.category,
      required this.matchFormat,
      required this.status,
      required this.season,
      required this.dateStart,
      required this.dateEnd,
      required this.totalMatches,
      required this.totalRounds,
      required this.totalTeams,
      required this.country,
  });

  Competition.fromJson(dynamic json) {
    cid = json['cid'];
    title = json['title'];
    abbr = json['abbr'];
    type = json['type'];
    category = json['category'];
    matchFormat = json['match_format'];
    status = json['status'];
    season = json['season'];
    dateStart = json['datestart'];
    dateEnd = json['dateend'];
    totalMatches = json['total_matches'];
    totalRounds = json['total_rounds'];
    totalTeams = json['total_teams'];
    country = json['country'];
  }



  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cid'] = cid;
    map['title'] = title;
    map['abbr'] = abbr;
    map['type'] = type;
    map['category'] = category;
    map['match_format'] = matchFormat;
    map['status'] = status;
    map['season'] = season;
    map['datestart'] = dateStart;
    map['dateend'] = dateEnd;
    map['total_matches'] = totalMatches;
    map['total_rounds'] = totalRounds;
    map['total_teams'] = totalTeams;
    map['country'] = country;
    return map;
  }

}