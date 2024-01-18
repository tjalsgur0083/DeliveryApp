import 'package:deliveryapp/data_model/onboarding_model.dart';
import 'package:deliveryapp/data_model/category_item_data_model.dart';
import 'package:deliveryapp/data_model/popular_items_model.dart';

class FoodRepository {

  static List<OnBoardingDataModel> data = [
    OnBoardingDataModel(
      image: 'assets/selectFood.json',
      title: 'Select Food Items', 
      description: "Test Description of selec food"
    ),
    OnBoardingDataModel(
      image: 'assets/food.json',
      title: 'Order fodd you like', 
      description: 'Test Description of food'
      ),
    OnBoardingDataModel(
      image: 'assets/delivery_services.json', 
      title: 'Deliver to your home',
      description: 'Test Description of delivery service'
    ),
  ];

  static List<CategoryItemDataModel> categoryItems = [
    CategoryItemDataModel(
      image: 'assets/Vegetables.png', 
      title: 'Vegetables'
    ),
    CategoryItemDataModel(
      image: 'assets/meat.png', 
      title: 'Meat'
    ),
        CategoryItemDataModel(
      image: 'assets/chicken.png', 
      title: 'Chickens'
    ),
        CategoryItemDataModel(
      image: 'assets/healthy-food.png', 
      title: 'Fish'
    ),
        CategoryItemDataModel(
      image: 'assets/salad.png', 
      title: 'Salad'
    ),
        CategoryItemDataModel(
      image: 'assets/soup.png', 
      title: 'soup'
    ),
        CategoryItemDataModel(
      image: 'assets/croissant.png', 
      title: 'Breakfast'
    ),
        CategoryItemDataModel(
      image: 'assets/sweet.png', 
      title: 'Desserts'
    )
  ];

  static List<PopularItemModel> popularItems = [
  PopularItemModel(
    title: 'Vegetables Meat', 
    image: 'assets/vegetablesMeat.png', 
    rating: 4
    ),
  PopularItemModel(
    title: 'Sambal Shrimp', 
    image: 'assets/sambalShrimp.png', 
    rating: 5
    ),
  PopularItemModel(
    title: 'Vegetables Meat', 
    image: 'assets/vegetablesMeat.png', 
    rating: 4
    ),
  PopularItemModel(
    title: 'Sambal Shrimp', 
    image: 'assets/sambalShrimp.png', 
    rating: 3
    ),
  PopularItemModel(
    title: 'Vegetables Meat', 
    image: 'assets/vegetablesMeat.png', 
    rating: 4
    ),
  PopularItemModel(
    title: 'Sambal Shrimp', 
    image: 'assets/sambalShrimp.png', 
    rating: 2
    ),
  PopularItemModel(
    title: 'Vegetables Meat', 
    image: 'assets/vegetablesMeat.png', 
    rating: 4
    ),
  PopularItemModel(
    title: 'Sambal Shrimp', 
    image: 'assets/sambalShrimp.png', 
    rating: 5
    ),
  ];
}