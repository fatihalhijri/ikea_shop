// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ikea_shop/bahan/bar.dart';
import 'package:ikea_shop/bahan/detail.dart';
import 'package:ikea_shop/bahan/produk.dart';
import 'package:ikea_shop/bahan/tema.dart';
import 'package:ikea_shop/uts/detail.dart';
import 'package:ikea_shop/uts/home.dart';

class Produk extends StatefulWidget {
  @override
  State<Produk> createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  int counter = 0;
  void tambah(){
    setState((){
      counter++;
    });
  }
  void kurang (){
    setState((){
      counter--;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductBar(),
      body: ProductIsi(),
      bottomSheet: BottomAppBar(
        child: Padding(
          padding: jarak,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 140,
                  height: 50,
                  decoration:
                      BoxDecoration(border: Border.all(color: warnaAbu)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              kurang();
                            });
                          },
                          child: Image.asset(
                            '/detail/minus.png',
                            height: 30,
                          ),
                        ),
                        Text(
                          '$counter',
                          style: judulText,
                        ),
                        GestureDetector(
                          onTap:(){
                            setState((){
                              tambah();
                            });
                          },
                          child: Image.asset(
                            '/detail/plus.png',
                            height: 30,
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detail()));
                },
                child: Container(
                  width: 255,
                  height: 50,
                  decoration: BoxDecoration(
                    color: warnaBiru,
                  ),
                  child: Center(
                    child: Text(
                      'Tambah Ke Keranjang',
                      style: textPg2,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductIsi extends StatelessWidget {
  const ProductIsi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: jarak,
          child: Column(children: [
            Image.asset('/detail/detail-1.png'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      image(img: '/barang-1.png'),
                      image(img: '/barang-2.png'),
                      image(img: '/barang-3.png'),
                      image(img: '/barang-4.png'),
                      image(img: '/barang-5.png')
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ALEX/LAGKAPTEN', style: textPg),
                        Icon(
                          Icons.heart_broken_outlined,
                        )
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Meja, hijau muda/putih, 120x60 cm',
                      style: textDetail),
                  SizedBox(height: 10),
                  Text('Rp1.909.000', style: judulText),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 8),
                      Text(
                        '4.5 | Terjual 166',
                        style: textDetail,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Ruang terbatas bukan berarti Anda harus menolak belajar atau bekerja dari rumah. Meja ini memakan sedikit ruang lantai namun masih memiliki unit laci tempat Anda dapat menyimpan kertas dan barang penting lainnya.',
                    style: textDetail,
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class ProductBar extends StatelessWidget implements PreferredSizeWidget {
  const ProductBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 90,
        elevation: 0.6,
        title: Padding(
          padding: const EdgeInsets.only(left: 8, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 24,
                            color: Colors.black,
                          )),
                      Text(
                        'ALEX/LAGKAPTEN',
                        style: judulText,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.search, color: Colors.black, size: 24),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(Icons.share_outlined,
                          color: Colors.black, size: 24),
                      SizedBox(width: 20),
                      Icon(Icons.shopping_cart_outlined,
                          size: 24, color: Colors.black)
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
