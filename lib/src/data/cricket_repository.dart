
import 'dart:convert';
import 'dart:io';

import '../repository/competition_repository.dart';
import '../util/helper.dart';
import 'package:http/http.dart' as http;
import '../model/match.dart';

class CricketRepository extends CompetitionRepository{


  @override
  Future<Stream<Match>> fetchMatches() async {
    Uri uri = Uri.parse('Api_delivery/order/pickupOrder/');
    Map<String, dynamic> _queryParams = {};
    uri = uri.replace(queryParameters: _queryParams);
    try{
      final client = new http.Client();
      final streamedRest = await client.send(http.Request('get', Uri.parse("url")));
      return streamedRest.stream
          .transform(utf8.decoder)
          .transform(json.decoder)
          .map((event) => Helper.getData(event))
          .expand((data) => (data as List))
          .map((event) => Match.fromJson(event));
    }catch(e){
      return const Stream.empty();
    }
  }

}