// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:easy_cook/features/data/model/home_food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeFoodWidget extends StatelessWidget {
  HomeFood foodData;

  HomeFoodWidget({Key? key, required this.foodData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          Positioned(
            child: Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 300,
                  width: 300,
                  child: Image.network(
                    foodData.imgUrl,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            height: 45,
            width: 90,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  foodData.category,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 17,
            height: 120,
            width: MediaQuery.of(context).size.width / 1.55,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodData.name,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text(
                        foodData.origin,
                        style: TextStyle(
                            fontSize: 18,
                            height: 1.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
