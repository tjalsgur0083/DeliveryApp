import 'package:flutter/material.dart';

Widget searchWidget() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30)
    ),
    child: const TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        border: InputBorder.none,
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.sort)
      ),
    ),
  );
}