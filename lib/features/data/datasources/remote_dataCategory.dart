import 'package:easy_cook/features/data/model/home_food.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class RemoteDataCategory{

  RemoteDataCategory();

  static Future<List<HomeCategory>> getHomeCategory()async{
    var url = Uri.parse("https://www.themealdb.com/api/json/v1/1/categories.php");
    var client = http.Client();

    var dataFromAPI = await client.get(url,
      headers:
      {'Content-Type': 'application/json',},
    );

    Map<String, dynamic> jsonData = jsonDecode(dataFromAPI.body);

    List<HomeCategory> listConvertedData = [];

    listConvertedData = (jsonData['categories'] as List<dynamic>).map((valueItem)=> HomeCategory.fromJson(valueItem)).toList();

    return listConvertedData;
  }

}
