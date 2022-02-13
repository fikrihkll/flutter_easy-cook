
import 'package:easy_cook/features/presentation/pages/detail/detail_page.dart';
import 'package:easy_cook/features/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';

const String homePage = 'home_page';
const String detailPage = 'detail_page';

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

    default:
      throw ('This route name does not exit');
  }
}