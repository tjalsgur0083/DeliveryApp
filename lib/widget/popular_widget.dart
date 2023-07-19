import 'package:flutter/material.dart';
import 'package:deliveryapp/repository/repository.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))
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


void bottomSheet(
  BuildContext context, {
    String? image,
    String? title, 
    double? rating,
    }
  ) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent, 
    context: context, 
    builder: (builder) {
    return Container(
      height: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: 180,
            child: Stack(
              children: [
                Align(alignment: Alignment.center, child: Image.asset("assets/food.png", fit: BoxFit.cover)),
                const Align(alignment: Alignment.bottomRight,
                child: Icon(Icons.favorite_border),
                )
              ],
            ),
          ),
          const SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontSize: 18)),
              const Text("\$31.00",style: TextStyle(color: Colors.deepOrange),),
            ],
          ),
          const SizedBox(height: 8,),
          Row(
            children: [
              RatingBar.builder(
                initialRating: rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 18,
                itemBuilder: (context, _) =>
                const Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.deepOrange,
                ),
                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                onRatingUpdate: (double value) {},
              ),
              const Text("90 Rating"),
            ],
          ),
          Text("About $title",style: const TextStyle(fontSize: 16),),
          const Text("아 그만하고싶다",textAlign: TextAlign.start,),
          const SizedBox(height: 15,),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            child: const Text('주문', style: TextStyle(fontSize: 18, color: Colors.white),),
            ),
          )
        ],
      ),
    );
  },);
}