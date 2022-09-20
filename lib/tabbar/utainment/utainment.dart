import 'package:bayu/background_tabbar.dart';
import 'package:bayu/card_promo.dart';
import 'package:bayu/tabbar/updates/promo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../uplan/menu_topup.dart';

class UTainmentTabBar extends StatelessWidget {
  const UTainmentTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGround_Layout(),
        Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.all(20),
              elevation: 5,
              color: Colors.white,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Pulsa Kamu",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Text(
                      "Rp 2.000",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(
                    height: 70,
                    child: Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: Menu_TopUp(
                            icon: CupertinoIcons.headphones,
                            text: "Play",
                          ),
                        ),
                        VerticalDivider(
                          thickness: 1,
                          indent: 2,
                          endIndent: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: Menu_TopUp(
                            icon: CupertinoIcons.search,
                            text: "Discover",
                          ),
                        ),
                        VerticalDivider(
                          thickness: 1,
                          indent: 2,
                          endIndent: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: Menu_TopUp(
                            icon: CupertinoIcons.gift,
                            text: "Rewards",
                          ),
                        ),
                        VerticalDivider(
                          thickness: 1,
                          indent: 2,
                          endIndent: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: Menu_TopUp(
                            icon: CupertinoIcons.person_3_fill,
                            text: "Space",
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Promo(),
            ),
          ],
        ),
      ],
    );
  }
}
