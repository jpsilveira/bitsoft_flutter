import 'package:bitsoft_flutter/routing/route_names.dart';
import 'package:bitsoft_flutter/widgets/navbar_item/navbar_item.dart';
import 'package:flutter/material.dart';

import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Episodes', episodesRoute, icon: Icons.videocam),
              const SizedBox(
                width: 60,
              ),
              NavBarItem('About', aboutRoute, icon: Icons.help),
            ],
          )
        ],
      ),
    );
  }
}
