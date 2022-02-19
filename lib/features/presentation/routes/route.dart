
import 'package:easy_cook/features/presentation/pages/detail/SeeAll.dart';
import 'package:easy_cook/features/presentation/pages/detail/detail_page.dart';
import 'package:easy_cook/features/presentation/pages/detail/searchpage.dart';
import 'package:easy_cook/features/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';

const String homePage = 'home_page';
const String detailPage = 'detail_page';
const String searchPage = 'search_page';
const String seeAll = 'see_all';

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
    case seeAll:
      return MaterialPageRoute(
          builder: (context) => SeeAll()
      );

    default:
      throw ('This route name does not exit');
  }
}