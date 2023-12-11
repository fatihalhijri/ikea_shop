// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

Color warnaAbuTua = Color(0xff6C6C6C);
Color warnaBiruMuda = Color(0xff4F707F);
Color warnaCoklat = Color(0xff5E4238);
Color warnaBiru = Color(0xff0058AB);
Color warnaAbu = Colors.black.withOpacity(0.4);

TextStyle judulText = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    letterSpacing: 0.5);

TextStyle textPg = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    letterSpacing: 0.5);
TextStyle textPg2 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    letterSpacing: 0.5);

TextStyle textDetail = TextStyle(
    color: warnaAbuTua,
    fontWeight: FontWeight.normal,
    fontSize: 14,
    letterSpacing: 0.5);
TextStyle textDetail2 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 14,
    letterSpacing: 0.5);
TextStyle textBlue =
    TextStyle(color: warnaBiru, fontSize: 14, fontWeight: FontWeight.w400);



EdgeInsets jarak = const EdgeInsets.symmetric(horizontal: 40, vertical: 12);

EdgeInsets jarakKartu =
    const EdgeInsets.symmetric(horizontal: 12, vertical: 17);

class Tema extends StatelessWidget {
  final String judulTema;
  final String subTema;

  const Tema({super.key, required this.judulTema, required this.subTema});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(judulTema, style: judulText),
        Text(
          subTema,
          style: textBlue,
        )
      ],
    );
  }
}

