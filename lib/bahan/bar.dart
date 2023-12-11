// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ikea_shop/bahan/tema.dart';
import 'package:ikea_shop/uts/detail.dart';
import 'package:ikea_shop/uts/home.dart';
import 'package:scroll_to_hide/scroll_to_hide.dart';

class AppBarKuSliver extends StatefulWidget {
  @override
  State<AppBarKuSliver> createState() => _AppBarKuState();
}

class _AppBarKuState extends State<AppBarKuSliver> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      floating: false,
      elevation: 0.6,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  '/ikea.png',
                  height: 50,
                  width: 70,
                ),
                Row(
                  children: [
                    Icon(Icons.notifications_none_sharp,
                        color: Colors.black, size: 24),
                    SizedBox(width: 14),
                    Icon(Icons.shopping_cart_outlined,
                        size: 24, color: Colors.black)
                  ],
                )
              ],
            ),
            TextField(
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w600),
                // onChanged: (value) => UpdateListYt(value),

                decoration: InputDecoration(
                    focusColor: Colors.blue,
                    labelStyle: TextStyle(color: Colors.grey),
                    hoverColor: Colors.black.withOpacity(0.2),
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                    hintText: 'Cari Barang Impianmu',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                    ),
                    filled: true,
                    prefixIcon: Icon(Icons.search,
                        color: Colors.black.withOpacity(0.7)),
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.8,
                        color: warnaBiruMuda,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ))),
          ],
        ),
      ),
    );
  }
}

class AppBarKu extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 120,
        elevation: 0.6,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    '/ikea.png',
                    height: 50,
                    width: 70,
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications_none_sharp,
                          color: Colors.black, size: 24),
                      SizedBox(width: 14),
                      Icon(Icons.shopping_cart_outlined,
                          size: 24, color: Colors.black)
                    ],
                  )
                ],
              ),
              TextField(
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w600),
                  // onChanged: (value) => UpdateListYt(value),

                  decoration: InputDecoration(
                      focusColor: Colors.blue,
                      labelStyle: TextStyle(color: Colors.grey),
                      hoverColor: Colors.black.withOpacity(0.2),
                      contentPadding: EdgeInsets.symmetric(horizontal: 25),
                      hintText: 'Cari Barang Impianmu',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w600,
                      ),
                      filled: true,
                      prefixIcon: Icon(Icons.search,
                          color: Colors.black.withOpacity(0.7)),
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.8,
                          color: warnaBiruMuda,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ))),
            ],
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}

class BarBawah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        // currentIndex: _currentIndex,
        // onTap: (int newIndex) {
        //   setState(() {
        //     _currentIndex = newIndex;
        //   });
        // },
        selectedItemColor: warnaBiru,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Icon(Iconsax.search_normal)),
              label: 'Beranda'),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Detail()));
                  },
                  child: Icon(Icons.coffee_outlined)),
              label: 'Inspirasi'),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Icon(
                  Icons.heart_broken_outlined,
                ),
              ),
              label: 'WishList'),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detail()));
                },
                child: Icon(
                  Icons.person_rounded,
                ),
              ),
              label: 'Profile'),
        ]);
  }
}

class AppBarSliver extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(120);
  State<AppBarSliver> createState() => _AppBarSliverState();
}

class _AppBarSliverState extends State<AppBarSliver>
    with TickerProviderStateMixin {
  TabController? _tabKontrol;

  @override
  void initState() {
    super.initState();
    _tabKontrol = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        //sliver app bar
        slivers: [
          SliverAppBar(
            toolbarHeight: 120,
            backgroundColor: Colors.deepPurple,
            title: TabBar(
                indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
                labelColor: Colors.amber,
                controller: _tabKontrol,
                tabs: <Widget>[
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            '/ikea.png',
                            height: 50,
                            width: 70,
                          ),
                          Row(
                            children: [
                              Icon(Icons.notifications_none_sharp,
                                  color: Colors.black, size: 24),
                              SizedBox(width: 14),
                              Icon(Icons.shopping_cart_outlined,
                                  size: 24, color: Colors.black)
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ]),
            // title: Text('Sliver App bar'),
            expandedHeight: 300,
            floating: true,
            pinned: true,

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: TextField(
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w600),
                  // onChanged: (value) => UpdateListYt(value),

                  decoration: InputDecoration(
                      focusColor: Colors.blue,
                      labelStyle: TextStyle(color: Colors.grey),
                      hoverColor: Colors.black.withOpacity(0.2),
                      contentPadding: EdgeInsets.symmetric(horizontal: 25),
                      hintText: 'Cari Barang Impianmu',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w600,
                      ),
                      filled: true,
                      prefixIcon: Icon(Icons.search,
                          color: Colors.black.withOpacity(0.7)),
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.8,
                          color: warnaBiruMuda,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ))),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
