import 'package:bitsoft_flutter/datamodels/navbar_item_model.dart';
import 'package:flutter/material.dart';

class NavBarItemMobile extends StatelessWidget {
  final NavBarItemModel model;
  const NavBarItemMobile({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(model.iconData),
          const SizedBox(
            width: 30,
          ),
          Text(
            model.title,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
