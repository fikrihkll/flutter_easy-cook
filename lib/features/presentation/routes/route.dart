
import 'package:easy_cook/features/presentation/pages/detail/detail_page.dart';
import 'package:easy_cook/features/presentation/pages/search/search_page.dart';
import 'package:easy_cook/features/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';

const String homePage = 'home_page';
const String detailPage = 'detail_page';
const String searchPage = 'search_page';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(
          builder: (context) => HomePage()
      );
    case detailPage:
      return MaterialPageRoute(
          builder: (context) => DetailPage()
      );
    case searchPage:
      return MaterialPageRoute(
          builder: (context) => SearchPage()
      );

    default:
      throw ('This route name does not exit');
  }
}