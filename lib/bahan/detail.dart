// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ikea_shop/bahan/tema.dart';

class SilverCostume extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(120);
  @override
  State<SilverCostume> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SilverCostume>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
          return <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              elevation: 0.6,
              pinned: true,
              floating: true,
              backgroundColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.only(left: 8, right: 25),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(
                                  context,
                                );
                              },
                              child: Icon(
                                Icons.arrow_back,
                                size: 24,
                                color: Colors.black,
                              )),
                          Text(
                            'Temukan Ispirasi',
                            style: judulText,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.shopping_cart_outlined,
                              color: Colors.black)
                        ],
                      ),
                    ]),
              ),
              bottom: TabBar(controller: _tabController, tabs: <Widget>[
                Tab(
                  child: Text(
                    'Inspirasi',
                    style: textPg,
                  ),
                ),
                Tab(
                  child: Text(
                    'Koleksi',
                    style: textPg,
                  ),
                ),
                Tab(
                  child: Text(
                    'Edukasi',
                    style: textPg,
                  ),
                ),
              ]),
            )
          ];
        },
        body: TabBarView(controller: _tabController, children: <Widget>[
          Lengkap(),
          Text('calls screen'),
          Text('Story screen'),
        ]));
  }
}

class Lengkap extends StatefulWidget {
  @override
  State<Lengkap> createState() => _LengkapState();
}

class _LengkapState extends State<Lengkap> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: jarak,
                  child: Row(children: [
                    buttonKu(0, 'semua'),
                    buttonKu(1, 'Ruang Kerja'),
                    buttonKu(2, 'Dapur'),
                    buttonKu(3, 'Ruang Warga'),
                  ]),
                ),
              ),
              Padding(
                padding: jarak,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Gambar(
                          img: '/barang-1.png',
                          tulis: 'Hunian compact yang nyaman',
                        ),
                        Gambar(
                          img: '/barang-2.png',
                          tulis: 'Lakukan 5 hal ini agar sepatumu bebas ...',
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          Image.asset(
                            '/inspirasi/barang-3.png',
                            width: 500,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Hadirkan nuasa elegant dan fancy kedalam kamar tidur anda',
                            style: textDetail,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Gambar(
                          img: '/barang-4.png',
                          tulis: 'Rumah lebih sehat dengan set tempat ...',
                        ),
                        Gambar(
                          img: '/barang-5.png',
                          tulis: 'Membuat kamar anak rapi jadi lebih mudah',
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector buttonKu(int index, String nama) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
        child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: selectedIndex == index ? warnaBiru : Colors.transparent,
            borderRadius: BorderRadius.circular(6),
            border: selectedIndex == index
                ? Border.all(width: 0, color: Colors.transparent)
                : Border.all(width: 1, color: warnaAbu),
          ),
          child: Center(
              child: Text(
            nama,
            style: TextStyle(
                color: selectedIndex == index ? Colors.white : warnaAbu),
          )),
        ),
      ),
    );
  }
}

class Gambar extends StatelessWidget {
  final String img;
  final String tulis;

  const Gambar({super.key, required this.img, required this.tulis});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 190,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Image.asset(
            '/inspirasi/$img',
            width: 190,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            tulis,
            style: textDetail,
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
