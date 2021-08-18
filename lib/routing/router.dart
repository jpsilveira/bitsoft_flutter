import 'package:bitsoft_flutter/routing/route_names.dart';
import 'package:bitsoft_flutter/views/about/about_view.dart';
import 'package:bitsoft_flutter/views/episodes/episodes_view.dart';
import 'package:bitsoft_flutter/views/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
//    case homeRoute:
    case aboutRoute:
      return _getPageRoute(const AboutView());
    case episodesRoute:
      return _getPageRoute(const EpisodesView());
    default:
      return _getPageRoute(const HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
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
                ));
}
