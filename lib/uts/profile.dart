// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ikea_shop/bahan/bar.dart';
import 'package:ikea_shop/bahan/detail.dart';
import 'package:ikea_shop/bahan/tema.dart';
import 'package:ikea_shop/bahan/wishlist.dart';
import 'package:ikea_shop/uts/detail.dart';
import 'package:ikea_shop/uts/home.dart';
import 'package:ikea_shop/uts/produk.dart';
import 'package:ikea_shop/uts/wishlist.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 3;

  List appbar = [
    AppBarKu(),
    SilverCostume(),
    WishListBar(),
    ProfileBar(),
  ];

  List<Widget> body = [
    HomeComponent(),
    Lengkap(),
    WishlistBody(),
    ProfileBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar[_currentIndex],
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
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
                icon: Icon(Iconsax.search_normal), label: 'Beranda'),
            BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Detail()));
                    },
                    child: Icon(Icons.coffee_outlined)),
                label: 'Inspirasi'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.heart_broken_outlined,
                ),
                label: 'WishList'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_rounded,
                ),
                label: 'Profile'),
          ]),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Menu Akun',
                  style: judulText,
                ),
                Icon(
                  Icons.settings,
                  size: 24,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  '/profile/barang-1.png',
                  width: 80,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Muhammad Fatih Al hijri',
                      style: textPg,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '160002359102020',
                      style: textDetail,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: warnaAbu,
              height: 2,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Icon(Icons.person,size: 24,color: Colors.black,),
                  SizedBox(width: 15,),
                  Text(
                    'Profile Saya',
                    style: textPg,
                  )
                ],
              ),
            ),
            Divider(
              color: warnaAbu,
              height: 2,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Icon(Icons.add_box,size: 24,color: Colors.black,),
                  SizedBox(width: 15,),
                  Text(
                    'Profile Saya',
                    style: textPg,
                  )
                ],
              ),
            ),
            Divider(
              color: warnaAbu,
              height: 2,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Icon(Icons.star,size: 24,color: Colors.black,),
                  SizedBox(width: 15,),
                  Text(
                    'Profile Saya',
                    style: textPg,
                  )
                ],
              ),
            ),
            Divider(
              color: warnaAbu,
              height: 2,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Icon(Icons.card_giftcard,size: 24,color: Colors.black,),
                  SizedBox(width: 15,),
                  Text(
                    'Profile Saya',
                    style: textPg,
                  )
                ],
              ),
            ),
            Divider(
              color: warnaAbu,
              height: 2,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Icon(Icons.help_outline,size: 24,color: Colors.black,),
                  SizedBox(width: 15,),
                  Text(
                    'Profile Saya',
                    style: textPg,
                  )
                ],
              ),
            ),
            Divider(
              color: warnaAbu,
              height: 2,
              thickness: 1,
            ),
          ],
        ),
      ],
    );
  }
}

class ProfileBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 50,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
    );
  }
}
