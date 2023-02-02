import 'package:flutter/material.dart';

import '../../components/matches_list.dart';
import '../../components/team_widget.dart';
import '../../data/moc_data/moc_local_matches.dart';
import '../../model/match.dart';
import '../../ui/app_colors.dart';
import '../../util/Utils.dart';
import '../../util/home_page_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin{
  int _selectedIndex = 0;

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        toolbarHeight: 0,
        bottom: TabBar(
          indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 5.0),
              insets: EdgeInsets.symmetric(horizontal:16.0)
          ),
          // indicator: BoxDecoration(
          //
          // ),
          indicatorWeight: 0.1,
          indicatorSize: TabBarIndicatorSize.label,
          controller: tabController,
          onTap: (index) => setState(() => _selectedIndex = index),
          labelStyle: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 10
          ),

          // padding: EdgeInsets.only(bottom: 10),
          tabs: [

            Align(
              alignment: Alignment.centerLeft,
                child: Tab(icon: Icon(Icons.sports_basketball_outlined,color: Theme.of(context).colorScheme.onSurface),)),

            Align(
              alignment: Alignment.centerRight,
                child: Tab(icon: Icon(Icons.sports_basketball,color: Theme.of(context).colorScheme.onSurface,))),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          MatchesList(
              matches: MockMatch.getMatches(),
              onTab: (m)=>Utils.currentNavigator.value.currentState?.pushNamed(HomePageRoutes.contest)
          ),
          MatchesList(matches: [],onTab: (match){}),
        ],
      ),
    );
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


  void showDialog(Match match){
    showModalBottomSheet(
        context: context,
        backgroundColor: Theme.of(context).colorScheme.primary,

        isScrollControlled: true,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height*0.55,
            // padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Padding(
              padding: EdgeInsets.only(left: 20,top: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // title and time
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(match.competition?.title ?? "competition",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.onPrimary,
                              fontFamily: 'Dm Mono',
                            ),)),
                      Expanded(
                        child: Text(
                          Utils.getTimeInFormat(match.dateStart,'HHl:mmll|MMM dd,hh:mma').replaceAll("l", "h")..replaceAll("ll", "m"),
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.secondary,
                            fontFamily: 'Dm Mono',
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  // team logo's
                  Row(

                    children: [
                      TeamWidget(match.teamA,color: Theme.of(context).colorScheme.onSecondary,width: 70,),
                      const SizedBox(width: 10,),
                      Text("VS",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColors.secondary
                        ),
                      ),
                      const SizedBox(width: 10,),
                      TeamWidget(match.teamB,color: Theme.of(context).colorScheme.onSecondary,width: 70,),

                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  textRow("Match",match.title),
                  textRow("Series",match.competition?.title??""),
                  textRow("Start Date",Utils.getTimeInFormat(match.dateStart, "MM-dd-yyyy")),
                  textRow("Start Time",Utils.getTimeInFormat(match.dateStart, "hh:mm a")),
                  textRow("Start Venue",match.venue?.name??""),
                  textRow("Umpirs",match.umpires),
                  textRow("Referee",match.referee),
                  SizedBox(height: MediaQuery.of(context).size.height*0.045,),

                ],
              ),
            ),
          );
        });
  }


  Widget textRow(String text1,String text2)=> Container(

    padding: EdgeInsets.symmetric(horizontal: 4,vertical: 3),
    child: Row(
        children: [
          Expanded(
            flex:2,
              child: Text(text1,style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
          textAlign: TextAlign.start,)),
          SizedBox(width: MediaQuery.of(context).size.width*0.04,),
          Expanded(
            flex:6,
              child: Text(text2,style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
          textAlign: TextAlign.start,)),
        ],
      ),
  );



}
