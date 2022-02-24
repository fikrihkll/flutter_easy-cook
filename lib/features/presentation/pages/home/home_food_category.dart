// ignore_for_file: prefer_const_constructors

import 'package:easy_cook/features/data/model/home_food.dart';
import 'package:flutter/material.dart';

class category_widget extends StatelessWidget {

  HomeCategory categoryData;

  category_widget({Key? key, required this.categoryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                ),
                child: Image.network(
                    categoryData.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black.withOpacity(0.2),
                              Colors.black.withOpacity(0.2)],)
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 65,
            height: 60,
            width: 200,
            child: Container(
              child: Center(
                child: Text(
                  categoryData.category,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ])
      ],
    );
  }
}
