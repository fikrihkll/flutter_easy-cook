// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:easy_cook/features/data/model/home_food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_cook/features/presentation/routes/route.dart' as route;
import 'package:easy_cook/features/presentation/pages/detail/detail_page.dart';

class DetailPage extends StatelessWidget {
  HomeFood foodData;

  DetailPage({Key? key, required this.foodData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Stack(
                children: [
                  Image.network(
                    foodData.imgUrl,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 50,
                    left: 30,
                    child: Container(
                      padding: EdgeInsets.only(right: 5),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 117, 228, 121),
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(route.homePage);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  foodData.name,
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      foodData.category,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      foodData.origin,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Ingredients:",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 10, right: 10, bottom: 20),
              child: Column(
                children: [
                  Text(
                    "1. ${foodData.ingri1} (${foodData.measure1})",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "2. ${foodData.ingri2} (${foodData.measure2}) ",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "3. ${foodData.ingri3} (${foodData.measure3})",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "4. ${foodData.ingri4} (${foodData.measure4})",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "5. ${foodData.ingri5} (${foodData.measure5})",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Instruction:",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: Text(
                foodData.instruction,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 122, 234, 126),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Order Food Ingredients",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
