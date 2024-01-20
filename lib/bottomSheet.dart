import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


void bottomSheet(
  BuildContext context, {
    String image = '', 
    String title = '', 
    double rating = 0.0,
    }
  ) 
  {
  showModalBottomSheet(
    backgroundColor: Colors.transparent, 
    context: context, 
    builder: (builder) {
    return Container(
      height: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        //borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15))
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
          //Text("any comment....", textAlign: TextAlign.start),
          const SizedBox(height: 15,),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(10),
              ),
            child: const Text('주문', style: TextStyle(fontSize: 18, color: Colors.white),),
            ),
          )
        ],
      ),
    );
  },);
}