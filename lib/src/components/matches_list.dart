import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:winable/src/components/team_widget.dart';
import 'package:winable/src/model/team.dart';
import 'package:winable/src/util/Utils.dart';
import '../model/match.dart';

class MatchesList extends StatefulWidget {
  final List<Match> matches;
  void Function(Match) onTab;
  MatchesList({Key? key, required this.matches,required this.onTab }) : super(key: key);

  @override
  State<MatchesList> createState() => _MatchesListState();
}

class _MatchesListState extends State<MatchesList> {


  String getTimeInFormat(String date) {
    DateTime startDate = DateTime.parse(date);
    return DateFormat('MMM dd,hh:mma').format(startDate);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.matches.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: InkWell(
              onTap:()=>widget.onTab(widget.matches[index]),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // textDirection: TextDirection.rtl,
                    children: [
                      TeamWidget(widget.matches[index].teamA),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(widget.matches[index].competition?.title ?? "competition"),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(Utils.getDifferenceString2(Utils.getDifference(widget.matches[index].dateStart),"completed"),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff5030E5),
                                      fontFamily: 'Dm Mono',
                                    ),),
                                const SizedBox(width: 10,),
                                Text(
                                  getTimeInFormat(widget.matches[index].dateStart),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff858585),
                                    fontFamily: 'Dm Mono',
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      TeamWidget(widget.matches[index].teamB),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
