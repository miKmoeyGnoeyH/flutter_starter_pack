import 'package:flutter/material.dart';

import '../../components/home/home.dart';

part 'route_names.dart';
part 'page_routes.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteNames.home:
    default:
      return homePageRoute;
  }
}
