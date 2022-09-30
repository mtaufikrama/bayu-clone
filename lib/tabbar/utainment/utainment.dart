// ignore_for_file: camel_case_types

import 'package:bayu/background_tabbar.dart';
import 'package:bayu/blank.dart';
import 'package:bayu/card_promo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../uplan/menu_topup.dart';

class UTainmentTabBar extends StatelessWidget {
  const UTainmentTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGround_Layout(),
        Column(
          children: [
            const Card_Awal_Tainment(),
            Expanded(
              child: ListView(
                children: [
                  const Card_Promo(title: "Mini Games"),
                  const SubtitleCard(
                    judul: "Mixtape Hari Ini",
                    lihat: "Lihat Playlist",
                  ),
                  const Card_Promo(title: "Dengerin Mixtape EDM Hits"),
                  const SubtitleCard(
                    judul: "U-Toon",
                    lihat: "Lihat Lainnya",
                  ),
                  DefaultTabController(
                    length: 3,
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 150,
                          child: TabBarView(
                            children: [
                              Card_Promo(title: "Makan Krupuk"),
                              Card_Promo(title: "Panjat Pinang"),
                              Card_Promo(title: "Tarik Tambang")
                            ],
                          ),
                        ),
                        Center(
                          child: TabBar(
                            labelColor: Colors.black,
                            automaticIndicatorColorAdjustment: true,
                            indicatorWeight: 1,
                            labelStyle: TextStyle(fontSize: 30),
                            indicatorColor: Colors.transparent,
                            isScrollable: true,
                            tabs: [
                              Tab(height: 30, text: "•"),
                              Tab(height: 30, text: "•"),
                              Tab(height: 30, text: "•"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SubtitleCard(
                    judul: "byUskop",
                    lihat: "Lihat Jadwal",
                  ),
                  DefaultTabController(
                    length: 5,
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 150,
                          child: TabBarView(
                            children: [
                              Card_Promo(title: "Kuntilanak"),
                              Card_Promo(title: "Suster Ngesot"),
                              Card_Promo(title: "Raid"),
                              Card_Promo(title: "Moana"),
                              Card_Promo(title: "Tarik Tambang"),
                            ],
                          ),
                        ),
                        Center(
                          child: TabBar(
                            labelColor: Colors.black,
                            automaticIndicatorColorAdjustment: false,
                            indicatorWeight: 1,
                            labelStyle: TextStyle(fontSize: 30),
                            indicatorColor: Colors.transparent,
                            isScrollable: true,
                            tabs: [
                              Tab(height: 30, text: "•"),
                              Tab(height: 30, text: "•"),
                              Tab(height: 30, text: "•"),
                              Tab(height: 30, text: "•"),
                              Tab(height: 30, text: "•"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SubtitleCard(
                    judul: "U-Stream",
                    lihat: "Lihat Video Lain",
                  ),
                  DefaultTabController(
                    length: 5,
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 150,
                          child: TabBarView(
                            children: [
                              Card_Promo(title: "Kuntilanak"),
                              Card_Promo(title: "Suster Ngesot"),
                              Card_Promo(title: "Raid"),
                              Card_Promo(title: "Moana"),
                              Card_Promo(title: "Tarik Tambang"),
                            ],
                          ),
                        ),
                        Center(
                          child: TabBar(
                            labelColor: Colors.black,
                            automaticIndicatorColorAdjustment: false,
                            indicatorWeight: 1,
                            labelStyle: TextStyle(fontSize: 30),
                            indicatorColor: Colors.transparent,
                            isScrollable: true,
                            tabs: [
                              Tab(height: 30, text: "•"),
                              Tab(height: 30, text: "•"),
                              Tab(height: 30, text: "•"),
                              Tab(height: 30, text: "•"),
                              Tab(height: 30, text: "•"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SubtitleCard(
                    judul: "U-Stream",
                    lihat: "Lihat Video Lain",
                  ),
                  const Card_Promo(title: "Daftar Episode Bulan Ini"),
                  const SubtitleCard(
                    judul: "Zona Anti Kudet",
                    lihat: "Lihat Artikel Lain",
                  ),
                  SizedBox(
                    height: 235,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                        ],
                      ),
                    ),
                  ),
                  const SubtitleCard(
                    judul: "Tukerin uCoin kamu",
                    lihat: "Lihat Reward",
                  ),
                  SizedBox(
                    height: 235,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                          CardGeser(title: "Lets Start The Day with the funeral of Queen..."),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CardGeser extends StatelessWidget {
  const CardGeser({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  "images/Opik.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: ListTile(
                dense: true,
                title: Text(
                    title),
                subtitle: Row(
                  children: const [
                    Icon(Icons.person),
                    Text("Catch Me Up!"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Card_Awal_Tainment extends StatelessWidget {
  const Card_Awal_Tainment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
              "uCoin Kamu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(
              "1490",
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
    );
  }
}

class SubtitleCard extends StatelessWidget {
  const SubtitleCard({
    Key? key,
    required this.judul,
    required this.lihat,
  }) : super(key: key);

  final String judul;
  final String lihat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  judul,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const BlankPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(lihat),
                      const Icon(
                        Icons.arrow_forward,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
