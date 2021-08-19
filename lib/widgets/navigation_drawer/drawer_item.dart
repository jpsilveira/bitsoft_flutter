import 'package:bitsoft_flutter/widgets/navbar_item/navbar_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(this.title, this.icon, this.navigationPath, {Key? key})
      : super(key: key);
  final String title;
  final IconData icon;
  final String navigationPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        top: 60,
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 30,
          ),
          NavBarItem(title, navigationPath, icon: Icons.help),
        ],
      ),
    );
  }
}
