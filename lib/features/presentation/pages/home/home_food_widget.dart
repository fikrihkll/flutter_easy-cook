import 'package:easy_cook/features/data/model/home_food.dart';
import 'package:flutter/cupertino.dart';

class HomeFoodWidget extends StatelessWidget {

  HomeFood foodData;

  HomeFoodWidget({Key? key, required this.foodData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(foodData.name),
          Text(foodData.category),
          Text(foodData.origin),
        ],
      ),
    );
  }
}
