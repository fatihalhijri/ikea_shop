// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ikea_shop/bahan/tema.dart';

class ProdukDetail extends StatelessWidget {
  final String img;
  final String judul;
  final String detail;
  final String harga;

  const ProdukDetail(
      {super.key,
      required this.img,
      required this.judul,
      required this.detail,
      required this.harga});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280,
        width: 190,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Padding(
          padding: jarakKartu,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('/$img', width: 170, height: 120, fit: BoxFit.cover),
              SizedBox(height: 20),
              Text(judul, style: textPg),
              Text(
                detail,
                style: textDetail,
              ),
              Text(harga, style: textPg)
            ],
          ),
        ));
  }
}

class Koleksi extends StatelessWidget {
  final String img;
  final String judul;
  final String detail;

  const Koleksi(
      {super.key,
      required this.img,
      required this.judul,
      required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        width: 190,
        decoration: BoxDecoration(color: warnaBiruMuda),
        child: Column(children: [
          Image.asset(
            '/$img',
            width: 190,
            height: 120,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: jarakKartu,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: textPg2,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(detail, style: textDetail2)
              ],
            ),
          ),
        ]));
  }
}

class Penawaran extends StatelessWidget {
  final String tanggal;
  final String judul;
  final String harga;

  const Penawaran({
    super.key,
    required this.tanggal,
    required this.judul,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 200,
      decoration: BoxDecoration(color: warnaBiru),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            width: 118,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tanggal,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: warnaBiru),
                  textAlign: TextAlign.center,
                )
              ],
            )),
        SizedBox(
          height: 14,
        ),
        Text(
          judul,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
            width: 110,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(harga,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: warnaBiru))
              ],
            )),
      ]),
    );
  }
}
