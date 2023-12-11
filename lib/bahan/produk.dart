// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class image extends StatelessWidget {
  final String img;

  const image({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Image.asset('/detail/$img', height: 60, width: 60);
  }
}

