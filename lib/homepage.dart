import 'package:bayu/tabbar/utainment/utainment.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'listtile_profile.dart';
import 'tabbar/updates/updates.dart';
import 'tabbar/uplan/uplan.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // @override
  // void initState() {
  //   OneSignal.shared.setNotificationWillShowInForegroundHandler(
  //       (OSNotificationReceivedEvent event) {
  //     event.complete(event.notification);
  //   });

  //   OneSignal.shared
  //       .setNotificationOpenedHandler((OSNotificationOpenedResult result) {});

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "images/BG.jpeg",
              fit: BoxFit.fitWidth,
            ),
            DefaultTabController(
              length: 3,
              initialIndex: 1,
              child: Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  ListTile_Profile(),
                  TabBar(
                    indicatorColor: Colors.white,
                    automaticIndicatorColorAdjustment: false,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 1,
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
              // FirebaseAuth.instance.signOut().then((value) {
              //   Navigator.of(context).push(
              //     MaterialPageRoute(
              //       builder: (_) => MyApp(),
              //     ),
              //   );
              // });
            },
            icon: Image.asset("images/Help.png"),
          ),
        ),
      ),
    );
  }
}
