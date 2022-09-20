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
                Expanded(
                  child: Text(
                    "Promo di Sekitarmu",
                    textAlign: TextAlign.left,
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.location_on),
                    label: Text("Jakarta Timur"),
                  ),
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
        Card_Promo(
          image:
              "https://www.telkomsel.com/sites/default/files/product_banner_image/byU-LANDING_0.png",
          title:
              "Nantikan berbagai promo seru di lokasi sekitar kamu",
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Yang Terbaru Dari Bayu",
            textAlign: TextAlign.left,
          ),
        ),
        Card_Promo(
          image:
              "https://www.telkomsel.com/sites/default/files/product_banner_image/byU-LANDING_0.png",
          title:
              "Nantikan berbagai promo seru di lokasi sekitar kamu",
        ),
        Card_Promo(
          image:
              "https://www.telkomsel.com/sites/default/files/product_banner_image/byU-LANDING_0.png",
          title:
              "Nonton One Piece, One Punch Man dan Anime lain gak pake berlangganan disini!",
        ),
        Card_Promo(
          image:
              "https://www.telkomsel.com/sites/default/files/product_banner_image/byU-LANDING_0.png",
          title:
              "Tiket nonton gratis nungguin kamu. Daftar disini buat ikut nobar One Piece Film: Red!",
        ),
        Card_Promo(
          image:
              "https://www.telkomsel.com/sites/default/files/product_banner_image/byU-LANDING_0.png",
          title:
              "Dengerin beragam pilihan lagu terbaru gak kena kuota cuma di MIXtape! Klik disini!",
        ),
        Card_Promo(
          image:
              "https://www.telkomsel.com/sites/default/files/product_banner_image/byU-LANDING_0.png",
          title:
              "Pake topping Roaming biar tetep update pas travelling ke luar negeri!",
        ),
        Card_Promo(
          image:
              "https://www.telkomsel.com/sites/default/files/product_banner_image/byU-LANDING_0.png",
          title: "Jamiun akhirnya bertemu sang tambatan hati disini!",
        ),
        Card_Promo(
          image:
              "https://www.telkomsel.com/sites/default/files/product_banner_image/byU-LANDING_0.png",
          title:
              "Ambil free kuota 2 GB dengan tebar link referral kamu",
        ),
      ],
    );
  }
}
