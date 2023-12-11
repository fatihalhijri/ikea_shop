// ignore_for_file: use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:ikea_shop/bahan/bar.dart';
import 'package:ikea_shop/bahan/coba.dart';
import 'package:ikea_shop/bahan/detail.dart';
import 'package:ikea_shop/bahan/home.dart';
import 'package:ikea_shop/bahan/produk.dart';
import 'package:ikea_shop/uts/appbarscroll.dart';
import 'package:ikea_shop/uts/detail.dart';
import 'package:ikea_shop/uts/home.dart';
import 'package:ikea_shop/uts/keranjang.dart';
import 'package:ikea_shop/uts/produk.dart';
import 'package:ikea_shop/uts/profile.dart';
import 'package:ikea_shop/uts/splash.dart';
import 'package:ikea_shop/uts/wishlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.orange
      ),
      home: ScrollHideShowDemo(),
    );
  }
}

