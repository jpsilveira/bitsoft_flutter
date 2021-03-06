import 'package:bitsoft_flutter/routing/route_names.dart';
import 'package:bitsoft_flutter/routing/router.dart';
import 'package:bitsoft_flutter/services/navigation_service.dart';
import 'package:bitsoft_flutter/widgets/centered_view/centered_view.dart';
import 'package:bitsoft_flutter/widgets/navigation_bar/navigation_bar.dart';
import 'package:bitsoft_flutter/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locator.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              const NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: homeRoute,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
