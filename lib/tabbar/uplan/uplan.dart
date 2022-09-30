import 'dart:math';
import 'package:flutter/material.dart';
import '../../background_tabbar.dart';
import '../../card_promo.dart';
import 'card_rincian.dart';
import 'card_awal.dart';

class UPlanTabBar extends StatelessWidget {
  const UPlanTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        const BackGround_Layout(),
        Column(
          children: [
            const Card_Awal_Plan(),
            Expanded(
              child: ListView(
                children: [
                  Card_Rincian(),
                  Card_Promo(
                    title: "Kirim dan rikues hadiah pulsa/kuota? Bisa!",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
