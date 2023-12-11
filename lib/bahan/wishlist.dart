// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ikea_shop/bahan/tema.dart';

class WishListBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    return AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0.6,
          toolbarHeight: 120,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'WishList',
                      style: judulText,
                    ),
                    Icon(Icons.shopping_cart_outlined,
                        size: 24, color: Colors.black)
                  ],
                ),
                SizedBox(height: 15),
                TextField(
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w600),
                    // onChanged: (value) => UpdateListYt(value),

                    decoration: InputDecoration(
                        focusColor: Colors.blue,
                        labelStyle: TextStyle(color: Colors.grey),
                        hoverColor: Colors.black.withOpacity(0.2),
                        contentPadding: EdgeInsets.symmetric(horizontal: 25),
                        hintText: 'Cari Barang Impianmu',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w600,
                        ),
                        filled: true,
                        prefixIcon: Icon(Icons.search,
                            color: Colors.black.withOpacity(0.7)),
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1.8,
                            color: warnaBiruMuda,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ))),
              ],
            ),
          ),
        );
  }
}