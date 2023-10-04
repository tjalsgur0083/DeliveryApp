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
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        ),
      ),
    child:  Column(
      children: [
        searchWidget(),
        const SizedBox(height: 10),
        categoryWidget(),
        popularWidget(),
        //state management test.......
        const SizedBox(height: 100),
        bottomWidget() //상태관리 테스트
      ],
    ),
    ),
  );
}