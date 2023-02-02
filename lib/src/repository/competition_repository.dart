import '../model/match.dart';
abstract class CompetitionRepository {

  Future<Stream<Match>> fetchMatches();

}