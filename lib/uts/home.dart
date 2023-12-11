// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ikea_shop/bahan/bar.dart';
import 'package:ikea_shop/bahan/detail.dart';
import 'package:ikea_shop/bahan/home.dart';
import 'package:ikea_shop/bahan/home2.dart';
import 'package:ikea_shop/bahan/tema.dart';
import 'package:ikea_shop/bahan/wishlist.dart';
import 'package:ikea_shop/uts/detail.dart';
import 'package:ikea_shop/uts/produk.dart';
import 'package:ikea_shop/uts/profile.dart';
import 'package:ikea_shop/uts/wishlist.dart';

class HomePage extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(120);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

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
      // body: HomeComponent(),
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

class HomeComponent extends StatelessWidget {
  const HomeComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(children: [
          Padding(
            padding: jarak,
            child: Image.asset('/home-1.png'),
          ),
          Padding(
            padding: jarak,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FotoHome(
                  fotoku: 'barang-1.png',
                  Judul: 'Kamar Tidur',
                ),
                FotoHome(
                  fotoku: 'barang-2.png',
                  Judul: 'Ruang Kerja',
                ),
                FotoHome(
                  fotoku: 'barang-3.png',
                  Judul: 'Dapur',
                ),
              ],
            ),
          ),
          Padding(
            padding: jarak,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FotoHome(
                  fotoku: 'barang-4.png',
                  Judul: 'Bayi & Anak',
                ),
                FotoHome(
                  fotoku: 'barang-5.png',
                  Judul: 'Tekstil',
                ),
                FotoHome(
                  fotoku: 'barang-6.png',
                  Judul: 'Penyimpanan',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: jarak,
              child: Tema(
                judulTema: 'Produk Populer',
                subTema: 'Lihat Semua',
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: jarak,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Produk()));
                    },
                    child: ProdukDetail(
                      img: '/barang-7.png',
                      judul: 'KROKFJORDEN',
                      detail: 'Pengait dengan plastik isap ...',
                      harga: 'Rp99.900',
                    ),
                  ),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Produk()));
                    },
                    child: ProdukDetail(
                      img: '/barang-8.png',
                      judul: 'ALEX/LAGKAPTEN',
                      detail: 'Meja, hijau muda/putih, 120x60 cm',
                      harga: 'Rp1.909.000',
                    ),
                  ),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Produk()));
                    },
                    child: ProdukDetail(
                      img: '/barang-8.png',
                      judul: 'FARDAL/PAX',
                      detail: 'Kombinasi lemari pakaian, putih/hig...',
                      harga: 'Rp8.400.000',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: jarak,
            child: Column(
              children: [
                Tema(
                    judulTema: 'Telusuri Koleksi Kami', subTema: 'Lihat Semua'),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Koleksi(
                        img: '/barang-9.png',
                        judul: 'BLÅVINGAD',
                        detail:
                            'Koleksi yang terinspirasi dari lautan untuk menciptakan ...'),
                    Koleksi(
                        img: '/barang-10.png',
                        judul: 'VINTERFINT',
                        detail:
                            'Koleksi VINTERFINT hadir dengan warna dan pola indah ...'),
                  ],
                ),
                SizedBox(height: 14),
                Tema(
                  judulTema: 'Penawaran Terkini',
                  subTema: 'Lihat Semua',
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 140,
                        width: 200,
                        decoration: BoxDecoration(color: warnaBiru),
                        child: Padding(
                            padding: jarakKartu,
                            child: Penawaran(
                              tanggal: '1-31 Nov- Des 2022 2022',
                              judul: 'Potongan belanja hingga',
                              harga: 'Rp 100.000',
                            ))),
                    Container(
                        height: 140,
                        width: 200,
                        decoration: BoxDecoration(color: warnaBiru),
                        child: Padding(
                            padding: jarakKartu,
                            child: Penawaran(
                              tanggal: '1-30 November 2022',
                              judul: 'Daapatkan CashBack/e-voucher hingga',
                              harga: 'Rp. 1.000.000',
                            ))),
                  ],
                ),
              ],
            ),
          )
        ]),
      ],
    );
  }
}


