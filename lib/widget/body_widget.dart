import 'package:deliveryapp/widget/bottom_widget.dart';
import 'package:deliveryapp/widget/popular_widget.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/widget/search_widget.dart';
import 'package:deliveryapp/widget/category_widget.dart';

Widget bodyWidget() {
  return Positioned(
    left: 0.0,
    right: 0.0,
    top: 230,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        // borderRadius: BorderRadius.only(
        //   topLeft: BorderRadius.circular(30),
        //   topRight: BorderRadius.circular(30)
        // ),
      ),
    child:  Column(
      children: [
        searchWidget(),
        const SizedBox(height: 10),
        categoryWidget(),
        popularWidget(),
        const SizedBox(height: 100),
        bottomWidget() //popular Dishes 클릭시 나오는 화면
      ],
    ),
    ),
  );
}