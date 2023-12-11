// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, annotate_overrides, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ikea_shop/bahan/tema.dart';
import 'package:ikea_shop/uts/detail.dart';

class Keranjang extends StatefulWidget implements PreferredSizeWidget {
  @override
  State<Keranjang> createState() => _KeranjangState();
  Size get preferredSize => const Size.fromHeight(120);
}

class _KeranjangState extends State<Keranjang> {
  int index_sepatu = 1;
  int index_kursi = 1;
  List<double> harga_sepatu = [
    0.0,
    124000.0,
    248000.0,
    372000.0,
    496000.0,
    620000.0
  ];
  List<double> harga_kursi = [
    0.0,
    45000.0,
    9000.0,
    135000.0,
    180000.0,
    225000.0
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.6,
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Keranjang', style: judulText),
                ],
              ),
              Icon(
                Iconsax.heart,
                size: 24,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: jarak,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
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
                  Text(
                    'Hapus Semua',
                    style: TextStyle(
                        color: warnaBiru,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
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
                              Image.asset('/wishlist/barang-1.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ALEX',
                                    style: textPg,
                                  ),
                                  Text(
                                    'Kabinet/tempat\n sepatu, putih, 80x35x102 cm',
                                    style: textDetail,
                                  ),
                                  Text(
                                    'Rp${harga_sepatu[index_sepatu]}',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 40,
                        width: 72,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: warnaAbu)),
                        child: Icon(
                          Iconsax.trash,
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                          height: 40,
                          width: 183,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: warnaBiru),
                          ),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                    if (index_sepatu > 0) {
                                      setState(() {
                                        index_sepatu = index_sepatu - 1;
                                      });
                                    }
                                  },
                                    child: Image.asset(
                                      '/detail/minus.png',
                                      width: 30,
                                    ),
                                  ),
                                  Text(
                                    index_sepatu.toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                    setState(() {
                                      if (index_sepatu <
                                          harga_sepatu.length - 1) {
                                        setState(() {
                                          index_sepatu = index_sepatu + 1;
                                        });
                                      }
                                    });
                                  },
                                    child: Image.asset(
                                      '/detail/plus.png',
                                      width: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
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
                              Image.asset('/wishlist/barang-2.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kursi',
                                    style: textPg,
                                  ),
                                  Text(
                                    'Kabinet/tempat\n sepatu, putih, 80x35x102 cm',
                                    style: textDetail,
                                  ),
                                  Text(
                                    'Rp${harga_sepatu[index_kursi]}',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 40,
                        width: 72,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: warnaAbu)),
                        child: Icon(
                          Iconsax.trash,
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                          height: 40,
                          width: 183,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: warnaBiru),
                          ),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                    if (index_kursi > 0) {
                                      setState(() {
                                        index_kursi = index_kursi - 1;
                                      });
                                    }
                                  },
                                    child: Image.asset(
                                      '/detail/minus.png',
                                      width: 30,
                                    ),
                                  ),
                                  Text(
                                    index_kursi.toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                    setState(() {
                                      if (index_kursi <
                                          harga_sepatu.length - 1) {
                                        setState(() {
                                          index_kursi = index_kursi + 1;
                                        });
                                      }
                                    });
                                  },
                                    child: Image.asset(
                                      '/detail/plus.png',
                                      width: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        height: 80,
        child: Padding(
          padding: jarak,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Total', style: textDetail),
                  Text(
                    'Rp${harga_kursi[index_kursi] + harga_sepatu[index_sepatu]}',
                    style: judulText,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detail()));
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: warnaBiru,
                  ),
                  child: Center(
                    child: Text(
                      'Beli',
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

class BarangKj extends StatefulWidget {
  const BarangKj({
    super.key,
    required this.img,
    required this.judul,
    required this.desc,
    required this.harga,
  });
  final String img;
  final String judul;
  final String desc;
  final String harga;

  @override
  State<BarangKj> createState() => _BarangKjState();
}

class _BarangKjState extends State<BarangKj> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
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
                      Image.asset('/wishlist/${widget.img}'),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.judul,
                            style: textPg,
                          ),
                          Text(
                            widget.desc,
                            style: textDetail,
                          ),
                          Text(
                            'Rp${widget.harga}',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                width: 72,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: warnaAbu)),
                child: Icon(
                  Iconsax.trash,
                  size: 24,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                  height: 40,
                  width: 183,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: warnaBiru),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            '/detail/minus.png',
                            width: 30,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                              color: warnaBiru,
                              fontSize: 16,
                            ),
                          ),
                          Image.asset(
                            '/detail/plus.png',
                            width: 30,
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
