// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ikea_shop/bahan/bar.dart';
import 'package:ikea_shop/bahan/detail.dart';
import 'package:ikea_shop/bahan/tema.dart';
import 'package:ikea_shop/bahan/wishlist.dart';
import 'package:ikea_shop/uts/detail.dart';
import 'package:ikea_shop/uts/home.dart';
import 'package:ikea_shop/uts/keranjang.dart';
import 'package:ikea_shop/uts/produk.dart';
import 'package:ikea_shop/uts/profile.dart';

class WishList extends StatefulWidget {
  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {

  @override
  int _currentIndex = 2;

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
        bottomNavigationBar:BottomNavigationBar(
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
                icon: GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail()));
                },child: Icon(Icons.coffee_outlined)), label: 'Inspirasi'),
            BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.heart,
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

class WishlistBody extends StatelessWidget {
  const WishlistBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection:Axis.vertical,
      children: [
        Padding(
          padding: jarak,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('4', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Barang')
                  ],
                ),
                Icon(
                  Icons.list,
                  size: 24,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(height: 8,),
            Barang(img: 'barang-1.png', judul: 'ALEX', desc: 'Unit laci, abu-abu toska,\n36x70 cm', harga: '1.350.000',),
            Barang(img: 'barang-2.png', judul: 'MILLBERGET', desc: 'Kursi putar, murum hitam', harga: 'Rp1.799.000',),
            Barang(img: 'barang-3.png', judul: 'SONGESAND', desc: 'Rngk tmpt tdr dg 2 ktk penyimpanan, \ncokelat, 160x200 cm', harga: '3.499.000',),
            Barang(img: 'barang-4.png', judul: 'HEKTAR', desc: 'Lampu lantai, abu-abu tua', harga: '1.299.000',),
          ]),
        ),
      ],
    );
  }
}

class Barang extends StatelessWidget {
  const Barang({
    super.key, required this.img, required this.judul, required this.desc, required this.harga,
  });
  final String img;
  final String judul;
  final String desc;
  final String harga;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                children: [
                  Image.asset('/wishlist/$img'),
                  SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    judul,
                    style: textPg,
                  ),
                  Text(
                    desc,
                    style: textDetail,
                  ),
                  Text(
                    'Rp${harga}',
                    style: textPg,
                  )
                ],
              ),
                ],
              ),
              
              Icon(
                Icons.more_vert,
                size: 24,
                color: Colors.black,
              )
            ]),
          ),
          Container(
              height: 40,
              width: 271,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: warnaBiru),
              ),
              child: Center(
                child: GestureDetector(
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Keranjang()));
                  },
                  child: Text(
                    'Tambah Ke Keranjang',
                    style: TextStyle(
                      color: warnaBiru,
                      fontSize: 16,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
    
  }
}
