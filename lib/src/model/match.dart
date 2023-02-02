import 'competition.dart';
import 'team.dart';
import 'venue.dart';
import 'toss.dart';

class Match {
  int matchId = 0;
  String title="";
  String shortTitle="";
  String subtitle="";
  int format = 0;
  String formatStr="";
  int status = 0;
  String statusStr="";
  String statusNote="";
  String verified="";
  String preSquad="";
  String oddsAvailable="";
  int gameState = 0;
  String gameStateStr="";
  Competition? competition;
  Team teamA =Team.newTeam();
  Team teamB = Team.newTeam();
  String dateStart="";
  String dateEnd="";
  int timestampStart = 0;
  int timestampEnd = 0;
  String dateStartIst="";
  String dateEndIst="";
  Venue? venue;
  String umpires="";
  String referee="";
  String equation="";
  String live="";
  String result="";
  int resultType = 0;
  String winMargin="";
  int winningTeamId = 0;
  int commentary = 0;
  int wagon = 0;
  int latestInningNumber = 0;
  String presquadTime="";
  String verifyTime="";
  Toss? toss;
  Match({
      required this.matchId,
      required this.title,
      required this.shortTitle,
      required this.subtitle,
      required this.format,
      required this.formatStr,
      required this.status,
      required this.statusStr,
      required this.statusNote,
      required this.verified,
      required this.preSquad,
      required this.oddsAvailable,
      required this.gameState,
      required this.gameStateStr,
      required this.competition,
      required this.teamA,
      required this.teamB,
      required this.dateStart,
      required this.dateEnd,
      required this.timestampStart,
      required this.timestampEnd,
      required this.dateStartIst,
      required this.dateEndIst,
      required this.venue,
      required this.umpires,
      required this.referee,
      required this.equation,
      required this.live,
      required this.result,
      required this.resultType,
      required this.winMargin,
      required this.winningTeamId,
      required this.commentary,
      required this.wagon,
      required this.latestInningNumber,
      required this.presquadTime,
      required this.verifyTime,
      required this.toss,});

  Match.fromJson(dynamic json) {
    matchId = json['match_id'];
    title = json['title'];
    shortTitle = json['short_title'];
    subtitle = json['subtitle'];
    format = json['format'];
    formatStr = json['format_str'];
    status = json['status'];
    statusStr = json['status_str'];
    statusNote = json['status_note'];
    verified = json['verified'];
    preSquad = json['pre_squad'];
    oddsAvailable = json['odds_available'];
    gameState = json['game_state'];
    gameStateStr = json['game_state_str'];
    competition = json['competition'] != null ? Competition.fromJson(json['competition']) : null;
    teamA = json['teama'] != null ? Team.fromJson(json['teama']) : Team.newTeam();
    teamB = json['teamb'] != null ? Team.fromJson(json['teamb']) : Team.newTeam();
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
    timestampStart = json['timestamp_start'];
    timestampEnd = json['timestamp_end'];
    dateStartIst = json['date_start_ist'];
    dateEndIst = json['date_end_ist'];
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    umpires = json['umpires'];
    referee = json['referee'];
    equation = json['equation'];
    live = json['live'];
    result = json['result'];
    resultType = json['result_type'];
    winMargin = json['win_margin'];
    winningTeamId = json['winning_team_id'];
    commentary = json['commentary'];
    wagon = json['wagon'];
    latestInningNumber = json['latest_inning_number'];
    presquadTime = json['presquad_time'];
    verifyTime = json['verify_time'];
    toss = json['toss'] != null ? Toss.fromJson(json['toss']) : null;
  }
  

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['match_id'] = matchId;
    map['title'] = title;
    map['short_title'] = shortTitle;
    map['subtitle'] = subtitle;
    map['format'] = format;
    map['format_str'] = formatStr;
    map['status'] = status;
    map['status_str'] = statusStr;
    map['status_note'] = statusNote;
    map['verified'] = verified;
    map['pre_squad'] = preSquad;
    map['odds_available'] = oddsAvailable;
    map['game_state'] = gameState;
    map['game_state_str'] = gameStateStr;
    if (competition != null) {
      map['competition'] = competition!.toJson();
    }
    if (teamA != null) {
      map['teama'] = teamA.toJson();
    }
    if (teamB != null) {
      map['teamb'] = teamB.toJson();
    }
    map['date_start'] = dateStart;
    map['date_end'] = dateEnd;
    map['timestamp_start'] = timestampStart;
    map['timestamp_end'] = timestampEnd;
    map['date_start_ist'] = dateStartIst;
    map['date_end_ist'] = dateEndIst;
    if (venue != null) {
      map['venue'] = venue!.toJson();
    }
    map['umpires'] = umpires;
    map['referee'] = referee;
    map['equation'] = equation;
    map['live'] = live;
    map['result'] = result;
    map['result_type'] = resultType;
    map['win_margin'] = winMargin;
    map['winning_team_id'] = winningTeamId;
    map['commentary'] = commentary;
    map['wagon'] = wagon;
    map['latest_inning_number'] = latestInningNumber;
    map['presquad_time'] = presquadTime;
    map['verify_time'] = verifyTime;
    if (toss != null) {
      map['toss'] = toss!.toJson();
    }
    return map;
  }

}