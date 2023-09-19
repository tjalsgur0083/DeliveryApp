import 'package:flutter/material.dart';

Widget bottomWidget(String name) {
  return Container(
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Column(
      children: [
        Text(
          name
        ),
      ],
    ),
  );
}