import 'package:flutter/material.dart';
import 'package:deliveryapp/repository/repository.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:deliveryapp/bottomSheet.dart';

Widget popularWidget() {
  final popularItems = FoodRepository.popularItems;

  return Builder(
    builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "popular Dishes",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 115,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                 scrollDirection: Axis.horizontal, 
                 shrinkWrap: true,
                 physics: const ScrollPhysics(),
                 itemCount: popularItems.length,
                 itemBuilder: (BuildContext context, int index) {
                   return GestureDetector(
                     onTap: () {
                       bottomSheet(
                        context,
                        image: popularItems[index].image,
                        title: popularItems[index].title,
                        rating: popularItems[index].rating.toDouble(),
                       );
                     },
                     child: Container(
                       margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                       padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                       height: 110,
                       width: 110,
                       alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(BorderRadius.circular(10))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                popularItems[index].image, fit: BoxFit.cover,
                              ),
                            ),
                            Text(popularItems[index].title,
                            style: const TextStyle(fontSize: 12),
                            ),
                            RatingBar.builder(
                              initialRating: popularItems[index].rating.toDouble(),
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 18,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                size:18,
                                color: Colors.deepOrange,
                              ), 
                              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0), //별 아이콘 사이의 간격
                              onRatingUpdate: (double value) {}
                            ),
                          ],
                        ),
                     ),
                   );
                 },
                ),
              ),
            ),
          ],
        ),
      );
    }
  );
}