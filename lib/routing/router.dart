import 'package:bitsoft_flutter/views/about/about_view.dart';
import 'package:bitsoft_flutter/views/episodes/episodes_view.dart';
import 'package:bitsoft_flutter/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(const HomeView(), settings);
    case aboutRoute:
      return _getPageRoute(const AboutView(), settings);
    case episodesRoute:
      return _getPageRoute(const EpisodesView(), settings);
    default:
      return _getPageRoute(const HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name ?? "");
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({
    required this.child,
    required this.routeName,
  }) : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
