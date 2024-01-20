import 'package:flutter/material.dart';
import 'package:deliveryapp/repository/repository.dart';

Widget categoryWidget() {
  final categoryItems = FoodRepository.categoryItems;

      return Builder(
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                MediaQuery.removePadding( //MediaQuery=>앱화면 크기   
                  context: context, 
                  removeTop: true,
                  child:GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, //가로에 4개의 요소를 띄움
                    ),
                    shrinkWrap: true, //GridView가 필요한 공간만 차지하도록 설정
                    itemCount: categoryItems.length,
                    itemBuilder: (BuildContext context, int index) {   //(_,index)로 표기해도 됨
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                        height: 80,
                        width: 80,
                        alignment: Alignment.center, //정렬
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40,
                              child: Image.asset(categoryItems[index].image),
                            ),
                            Text(categoryItems[index].title)
                          ],
                        ),
                      );
                    }
                  ),
                ),
              ],
            ),
          );
        }
      );
    }