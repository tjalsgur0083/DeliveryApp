import 'package:flutter/material.dart';

    Widget hearderWidget() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(15,30,15,0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.person_outline),
              SizedBox(
                height: 85,
                width: 85,
              ),
              Icon(Icons.favorite_border),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Image.asset('assets/cover.png'),
        )
      ],
    );
  }