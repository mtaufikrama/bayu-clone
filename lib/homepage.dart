import 'package:bayu/tabbar/utainment/utainment.dart';
import 'package:flutter/material.dart';
import 'blank.dart';
import 'listtile_profile.dart';
import 'tabbar/updates/updates.dart';
import 'tabbar/uplan/uplan.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
          ),
          DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                ListTile_Profile(),
                TabBar(
                  tabs: [
                    Tab(
                      text: "U-Plan",
                    ),
                    Tab(
                      text: "Updates",
                    ),
                    Tab(
                      text: "U-Tainment",
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      UPlanTabBar(),
                      UpdatesTabBar(),
                      UTainmentTabBar(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 100,
        width: 100,
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BlankPage()),
            );
          },
          icon: Image.network(
            "https://www.telkomsel.com/sites/default/files/inline-images/help-byu-icon.png",
          ),
        ),
      ),
    );
  }
}
