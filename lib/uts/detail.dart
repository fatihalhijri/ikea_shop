// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ikea_shop/bahan/detail.dart';
import 'package:ikea_shop/bahan/tema.dart';
import 'package:ikea_shop/uts/home.dart';
import 'package:ikea_shop/uts/wishlist.dart';

class Detail extends StatefulWidget {

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  

  int _currentIndex = 1;
  // List<Widget> body = [
  //   Center(child: Icon(Icons.menu)),
  //   SilverCostume(),
  //   Center(child: Icon(Icons.person)),
  //   Center(child: Icon(Icons.g_mobiledata)),
  // ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SilverCostume(),
      bottomNavigationBar:  BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
            selectedItemColor: warnaBiru,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Iconsax.search_normal)),
              label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(Icons.coffee_outlined),
              label: 'Inspirasi'),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WishList()));
                },
                child: Icon(
                  Iconsax.heart,
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
        ])
    );
  }
}