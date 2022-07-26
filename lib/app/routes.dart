import 'package:flutter/material.dart';
import 'package:simple_form/app/controller.dart';
import 'package:simple_form/app/unknow_view.dart';
import 'package:simple_form/presenter/dashboard/ui/dashboard_view.dart';
import 'package:simple_form/presenter/form/ui/form_display.dart';

Widget initialPage(RouteSettings routeSettings, Controller controller) {
  Widget initialPage = const DashBoardView();

  return initialPage;
}

Route<dynamic> routes(RouteSettings routeSettings, Controller controller) {
  Widget page = getPage(routeSettings, controller);
  switch (routeSettings.name) {
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (BuildContext context) {
            return page;
          });
  }
}

Widget getPage(RouteSettings routeSettings, Controller controller) {
  switch (routeSettings.name) {
    case '/':
      return initialPage(routeSettings, controller);
    case FormDisplay.routeName:
      return const FormDisplay();
    case DashBoardView.routeName:
      return const DashBoardView();
    default:
      return const AppUnknowView();
  }
}
