import 'package:flutter/material.dart';
import '../../card_promo.dart';

class Promo extends StatelessWidget {
  const Promo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 30,
            child: Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: Text(
                    "Promo di Sekitarmu",
                    textAlign: TextAlign.left,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.location_on),
                    label: const Text("Jakarta Timur"),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Card_Promo(
          title:
              "Nantikan berbagai promo seru di lokasi sekitar kamu",
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Yang Terbaru Dari Bayu",
            textAlign: TextAlign.left,
          ),
        ),
        const Card_Promo(
          title:
              "Nonton One Piece, One Punch Man dan Anime lain gak pake berlangganan disini!",
        ),
        const Card_Promo(
          title:
              "Tiket nonton gratis nungguin kamu. Daftar disini buat ikut nobar One Piece Film: Red!",
        ),
        const Card_Promo(
          title:
              "Dengerin beragam pilihan lagu terbaru gak kena kuota cuma di MIXtape! Klik disini!",
        ),
        const Card_Promo(
          title:
              "Pake topping Roaming biar tetep update pas travelling ke luar negeri!",
        ),
        const Card_Promo(
          title: "Jamiun akhirnya bertemu sang tambatan hati disini!",
        ),
        const Card_Promo(
          title:
              "Ambil free kuota 2 GB dengan tebar link referral kamu",
        ),
      ],
    );
  }
}
