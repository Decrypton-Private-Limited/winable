import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:winable/src/util/Utils.dart';
import 'package:winable/src/util/home_page_routes.dart';
import '../model/tab_model.dart';
import '../util/assets.dart';

class MainScreen extends StatefulWidget {

  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var currentScreen = 0;

  BottomNavigationBarItem navIcon(String name, String icon, int index) =>
      BottomNavigationBarItem(
        icon: Container(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: SvgPicture.asset(
            icons(icon),
            color: currentScreen == index
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        label: name,
        tooltip: name,
        backgroundColor: Theme.of(context).primaryColor,
      );

  List<TabModel> tabList = [];

  @override
  void initState() {
    tabList = [
      TabModel("Matches","Home Navigator", HomePageRoutes.home,GlobalKey()),
      TabModel("My Matches","My Matches", HomePageRoutes.myMatches,GlobalKey()),
      TabModel("Profile","My Profile", HomePageRoutes.myProfile,GlobalKey()),
      TabModel("Winner","Winner", HomePageRoutes.winner,GlobalKey()),
      TabModel("Setting","Setting", HomePageRoutes.settingsRoute,GlobalKey()),
    ];
    Utils.currentNavigator.value = tabList[currentScreen].key;
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tabList[currentScreen].key.currentState?.canPop()==false ? AppBar(
        leading: InkWell(
          onTap: ()=>"TODO(OPEN Drawer)",
          child: Icon(
            Icons.menu,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        centerTitle: true,
        title: Text(tabList[currentScreen].label),
      ):null,
      body: tabList[currentScreen].navigator,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 100,
        height: 100,
        child: InkWell(
          onTap: () {
            setState(() {
              currentScreen = 2;
              Utils.currentNavigator.value = tabList[currentScreen].key;
              print(Utils.currentNavigator.value.currentWidget);
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Tooltip(
                message: "My Profile",
                child: Card(
                  shape: const CircleBorder(),
                  elevation: 0,
                  color: Theme.of(context).colorScheme.primary,
                  margin: const EdgeInsets.only(top: 16),
                  child: Container(
                      padding: const EdgeInsets.all(18),
                      child: SvgPicture.asset(
                        icons("profile"),
                        color: currentScreen != 2
                            ? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context).colorScheme.secondary,
                      )),
                ),
              ),
              Text(
                "My Profile",
                style: TextStyle(
                    color: currentScreen != 2
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.secondary,
                    fontSize: 10),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            switch (index) {
            }

            setState(() => currentScreen = index);
            Utils.currentNavigator.value = tabList[index].key;
            print("current state set to ${tabList[index].key.currentState}");
            print(tabList[index].key.currentContext);

          },
          currentIndex: currentScreen,
          elevation: 10,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          showUnselectedLabels: true,
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          type: BottomNavigationBarType.fixed,
          items: [
            navIcon("Home", "home", 0),
            navIcon("My Matches", "cup", 1),
            BottomNavigationBarItem(
              icon: Container(),
              label: "",
              tooltip: "",
              backgroundColor: Theme.of(context).primaryColor,
            ),
            navIcon("My Winner", "vector", 3),
            navIcon("Settings", "setting", 4),
          ]),
    );
  }
}
