import 'package:bitsoft_flutter/services/navigation_service.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem(this.title, this.navigationPath, {Key? key})
      : super(key: key);

  final String title;
  final String navigationPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
