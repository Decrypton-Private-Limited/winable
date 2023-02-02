
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:winable/src/util/Utils.dart';

import '../../util/assets.dart';
import '../../util/home_page_routes.dart';

class Contest extends StatefulWidget {
  const Contest({Key? key}) : super(key: key);

  @override
  State<Contest> createState() => _ContestState();
}

class _ContestState extends State<Contest> with SingleTickerProviderStateMixin{

  Widget teamHeader() =>Padding(
    padding: EdgeInsets.symmetric(horizontal: 6,vertical: 4),
    child: Row(
      children: [
        Image.network("https://uxwing.com/wp-content/themes/uxwing/download/flags-landmarks/india-flag-icon.png",width: 32,height: 32,),
        SizedBox(width: 8,),
        Text("England",style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontFamily: 'DM Sans',
          fontSize: 13,
        )),
      ],
    ),
  );
  late TabController tabController ;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: ()=>Utils.currentNavigator.value.currentState?.pop(),
          child: Icon(
            Icons.arrow_back_outlined,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(3),
            child: InkWell(
              onTap: ()=>Utils.currentNavigator.value.currentState?.pop(),
              child: SvgPicture.asset(icons("cup"),width: 25,height: 25,),
            ),
          ),
          Container(
            padding: EdgeInsets.all(3),
            child: InkWell(
              onTap: ()=>Utils.currentNavigator.value.currentState?.pop(),
              child: Icon(Icons.notifications,size: 25,),
            ),
          ),
          Container(
            padding: EdgeInsets.all(3),
            child: InkWell(
              onTap: ()=>Utils.currentNavigator.value.currentState?.pop(),
              child: Icon(Icons.account_balance_wallet,size: 25,),
            ),
          ),
          SizedBox(width: 3,)
        ],
        centerTitle: true,
        title: Text("Byju's T20"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 40),
              child: FloatingActionButton.extended(
                backgroundColor: Theme.of(context).primaryColor,
                extendedPadding: EdgeInsets.symmetric(horizontal: 10),
                onPressed: (){},
                isExtended: true,
                label: Text("Enter Contest Code",
                  style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 15,
                ),),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(bottom: 40),
              child: FloatingActionButton.extended(
                backgroundColor: Theme.of(context).primaryColor,
                extendedPadding: EdgeInsets.symmetric(horizontal: 10),
                onPressed: (){},
                isExtended: true,
                label: Text("Create Contest",
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 15,
                    )),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton.extended(
              backgroundColor: Theme.of(context).primaryColor,
              extendedPadding: EdgeInsets.symmetric(horizontal: 10),
              onPressed: (){},
              isExtended: true,
              label: Text("Create Team",
                  style: TextStyle(
                    fontFamily: 'DM Sans',
                    fontSize: 20,
                  )),
            ),
          ),

        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    teamHeader(),
                    Text("Vs",style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    )),
                    teamHeader(),
                  ],
                ),
              ),
              Text("6:00 PM",style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),),
            ],
          ),
          TabBar(
            controller: tabController,
              // indicatorWeight: 0.1,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Theme.of(context).colorScheme.primary,
              labelColor: Theme.of(context).colorScheme.primary,
              labelPadding: EdgeInsets.zero,
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 5.0,
                  ),
                ),
              ),
              // isScrollable: true,
              labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                fontFamily: 'Poppins',
              ),
              tabs: const [
                Tab(text: "Contest",),
                Tab(text: "My Contest",),
                Tab(text: "Team",),
              ]),
          Expanded(
            child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder(
                    itemCount: 10,
                      itemBuilder: (_,index){
                      return Container(
                        margin: EdgeInsets.all(4),
                        // padding: EdgeInsets.only(top: 10),
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text("Prize Pool",style: TextStyle(
                                            fontFamily: 'DM Sans',
                                            color: Color(0xff50555C),
                                            fontSize: 13,
                                          ),),
                                          SizedBox(height: 10,),
                                          Text("\$ 1000",style: TextStyle(
                                            fontFamily: 'DM Sans',
                                            color: Theme.of(context).colorScheme.onSurface,
                                            fontSize: 13,
                                          ),),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text("Winner",style: TextStyle(
                                            fontFamily: 'DM Sans',
                                            color: Color(0xff50555C),
                                            fontSize: 13,
                                          ),),
                                          SizedBox(height: 10,),
                                          Text("1",style: TextStyle(
                                            fontFamily: 'DM Sans',
                                            color: Theme.of(context).colorScheme.onSurface,
                                            fontSize: 13,
                                          ),),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text("Entry",style: TextStyle(
                                            fontFamily: 'DM Sans',
                                            color: Color(0xff50555C),
                                            fontSize: 13,
                                          ),),
                                          SizedBox(height: 10,),
                                          Container(
                                            padding: EdgeInsets.symmetric(vertical: 4,horizontal:4),
                                            decoration: BoxDecoration(
                                              color: Theme.of(context).colorScheme.secondary,
                                              borderRadius: BorderRadius.all(Radius.circular(4))
                                            ),
                                            child: Text("\$ 1000",style: TextStyle(
                                              fontFamily: 'DM Sans',
                                              color: Theme.of(context).colorScheme.onSurface,
                                              fontSize: 13,
                                            ),),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 6),
                                  width: MediaQuery.of(context).size.width*0.8,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: LinearProgressIndicator(
                                      backgroundColor: Color(0x26262626),
                                      value: 0.4,
                                      color: Theme.of(context).colorScheme.secondary,
                                      minHeight: 8,

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 14,vertical: 2),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("2 Spot Left",style: TextStyle(
                                        fontFamily: 'DM Sans',
                                        fontSize: 13,
                                        color: Color(0xffFFC221),

                                      ),),
                                      Text("2 Spot Left",style: TextStyle(
                                        fontFamily: 'DM Sans',
                                        fontSize: 13,
                                        color: Color(0xffFFC221),

                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                    color: Color(0x444444444),
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(10)
                                    )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SvgPicture.asset(icons("tickcircle")),
                                      SizedBox(width: 4,),
                                      Text("Garanted",style: TextStyle(
                                        fontFamily: 'DM Sans',
                                        fontSize: 13,
                                        color: Theme.of(context).primaryColor
                                      ),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                  }),
                  Text("data"),
                  Text("data"),
            ]),
          )
        ],
      ),
    );
  }
}





