import 'package:flutter/material.dart';
import '../../background_tabbar.dart';
import 'card_awal.dart';
import 'promo.dart';

class UpdatesTabBar extends StatefulWidget {
  const UpdatesTabBar({Key? key}) : super(key: key);

  @override
  State<UpdatesTabBar> createState() => _UpdatesTabBarState();
}

class _UpdatesTabBarState extends State<UpdatesTabBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGround_Layout(),
        Column(
          children: const [
            Card_Awal_Updates(),
            Expanded(
              child: Promo(),
            ),
          ],
        )
      ],
    );
  }
}
