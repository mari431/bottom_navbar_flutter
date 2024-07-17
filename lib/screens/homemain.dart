import 'package:bottomnav_flutter/screens/chat_screen.dart';
import 'package:bottomnav_flutter/screens/home_Screen.dart';
import 'package:bottomnav_flutter/screens/profile_screen.dart';
import 'package:bottomnav_flutter/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int selectedScreenIndex = 0;
  int selectedScreen = 0;

  List<Widget> screens = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 0), () {
      setState(() {
        screens = [
          homescreen(),
          searchscreen(),
          chatscreen(),
          profilescreen(),
          // Dashboard(),
          // ProfileViewScreen(),
        ];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        child: Stack(
          children: [
            Container(
                child: screens.isEmpty
                    ? Center(
                    child: CircularProgressIndicator(
                      color: Colors.purpleAccent,
                    ))
                    : screens[selectedScreen]),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: bottomNavigation(),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomNavigation() {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          color: Colors.black,
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectedScreen = 0;
                  // ObservationController.to.selectIndex=111;
                });
              },
              child: bottomNavigationItem(
                  title: "home", index: 0, icon: Icons.home),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    selectedScreen = 1;
                    // ObservationController.to.selectIndex=1;
                  });
                },
                child: bottomNavigationItem(
                    title: "search", index: 1, icon: Icons.search)),
            InkWell(
                onTap: () {
                  setState(() {
                    selectedScreen = 2;
                    // ObservationController.to.selectIndex=1;
                  });
                },
                child: bottomNavigationItem(
                    title: "chat", index: 2, icon: Icons.chat)),
            InkWell(
                onTap: () {
                  setState(() {
                    selectedScreen = 3;
                    // ObservationController.to.selectIndex=1;
                  });
                },
                child: bottomNavigationItem(
                    title: "profile", index: 3, icon: Icons.person)),
          ],
        ),
      ),
    );
  }

  Container bottomNavigationItem({required int index, required String title, required IconData icon,}) {
    return Container(
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: selectedScreen == index ? Colors.lightGreenAccent : Colors.grey,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "$title",
            style: TextStyle(
                fontSize: 10,
                color: selectedScreen == index ? Colors.lightGreenAccent : Colors.grey,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
