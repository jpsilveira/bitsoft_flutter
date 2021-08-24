import 'package:bitsoft_flutter/datamodels/navbar_item_model.dart';
import 'package:flutter/material.dart';

class NavBarItemTabletDesktop extends StatelessWidget {
  final NavBarItemModel model;
  const NavBarItemTabletDesktop({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Text(
      model.title,
      style: const TextStyle(fontSize: 18),
    );
  }
}
