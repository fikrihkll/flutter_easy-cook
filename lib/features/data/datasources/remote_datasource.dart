import 'dart:convert';

import 'package:easy_cook/features/data/model/home_food.dart';
import 'package:http/http.dart' as http;

class RemoteDatasource {

  RemoteDatasource();

  // 4 => Di panggil dari Home
  static Future<List<HomeFood>> getHomeData() async {

    var url = Uri.parse('https://www.themealdb.com/api/json/v1/1/search.php?f=a');
    var client = http.Client();

    // 5 => Request data ke API dan program akan menunggu data masuk ke variable dataFromAPI
    var dataFromAPI = await client.get(url,
      headers:
      {'Content-Type': 'application/json',},
    );

    // 6 => variable dataFromAPI akan di convert menjadi JSON dan ditampung di dalam variable jsonData
    Map<String, dynamic> jsonData = jsonDecode(dataFromAPI.body);

    List<HomeFood> listConvertedData = [];

    // 7 => data JSON di convert menjadi data List<HomeFood>
    listConvertedData = (jsonData['meals'] as List<dynamic>).map((valueItem)=> HomeFood.fromJson(valueItem)).toList();

    // 8 => listConvertedData akan di kembalikan ke Home (tempat si pemanggil)
    return listConvertedData;
  }

}