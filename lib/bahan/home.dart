// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ikea_shop/bahan/tema.dart';
import 'package:ikea_shop/uts/home.dart';

class FotoHome extends StatelessWidget {
  final String fotoku;
  final String Judul;

  const FotoHome({super.key, required this.fotoku, required this.Judul});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          '/$fotoku',
          height: 100,
          width: 130,
        ),
        Text(
          Judul,
          style: textPg,
          textAlign: TextAlign.start,
        )
      ],
    );
  }
}

// class BarBawah extends StatefulWidget {
//   @override
//   State<BarBawah> createState() => _BarBawahState();
// }

// class _BarBawahState extends State<BarBawah> {
//   int _currentIndex = 0;
//   List<Widget> body = [
//     HomeComponent(),
//     Icon(Icons.menu),
//     Icon(Icons.person),
//   ];

//   @override
//   Widget build(BuildContext context) {
    
//     return 
//   }
// }

class BarBawah2 extends StatefulWidget {
  @override
  State<BarBawah2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BarBawah2> {
  int _currentIndex = 0;
  List<Widget> body = [
    HomeComponent(),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'),
          BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Menu'),
          BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile'),
          ],
      ),
    );
  }
}
