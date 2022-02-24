// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:easy_cook/features/data/datasources/remote_datasource.dart';
import 'package:easy_cook/features/data/model/home_food.dart';
import 'package:easy_cook/features/presentation/pages/home/home_food_category.dart';
import 'package:easy_cook/features/presentation/pages/home/home_food_widget.dart';
import 'package:easy_cook/widgets/popular_titled.dart';
import 'package:easy_cook/widgets/search_bar.dart';
import 'package:easy_cook/widgets/see_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_cook/features/presentation/routes/route.dart' as route;

import '../../../../widgets/hello_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HomeFood> listData = [];
  List<HomeCategory> listCategory = [];
  bool _isLoading = true;

  void getData() async {
    // 2 => Membuat objek RemoteDataSources
    RemoteDatasource data = RemoteDatasource();

    // 3 => Panggil fungsi yang ada di dalam RemoteDataSoruce dan program akan menunggu disini
    var response = await RemoteDatasource.getHomeData();

    // 9 => setelah beberapa detik variable response sudah ada isinya dan memasukkan ke dalam listData
    listData.addAll(response);

    // 10 => Flutter akan me refresh halaman dengan data yang baru
    setState(() {});
  }

  @override
  void initState() {
    // 1 => Panggil data ketika aplikasi dibuka
    getData();
    getDataCategory();
  }
  
  //baru ditambahkan
  Future<void> getHomeData() async {
    listData = await RemoteDatasource.getHomeData();
    setState(() {
      _isLoading = false;
    });
  }

  void getDataCategory() async{
    RemoteDatasource data = RemoteDatasource();

    var response = await data.getHomeCategory();

    listCategory.addAll(response);

    setState(() {

    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Hello_Profile(user: 'Ridho'),
                const Search_Bar(),
                const See_Container(),
                Popular_Titled(
                  titled: 'Popular Recipe',
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      primary: false,
                      shrinkWrap: true,
                      itemCount: listData.length,
                      itemBuilder: (context, position) {
                        return HomeFoodWidget(foodData: listData[position]);
                      }),
                ),
                Popular_Titled(
                  titled: 'Category',
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      primary: false,
                      shrinkWrap: true,
                      itemCount: listCategory.length,
                      itemBuilder: (context, position) {
                        return category_widget(categoryData: listCategory[position]);
                      }),
                ),
              ]),
        ));
  }
}
