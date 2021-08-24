import 'package:bitsoft_flutter/extensions/hover_extensions.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'call_to_action_mobile.dart';
import 'call_to_action_tablet_desktop.dart';

class CallToAction extends StatelessWidget {
  final String title;

  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return OnHover(
        xPos: -30,
        yPos: -30,
        scaleSize: 1.5,
        millisecDuration: 300,
        rotationDegrees: 90,
        builder: (isHovered) {
          final color = isHovered ? Colors.white : Colors.black;
          return ScreenTypeLayout(
            mobile: CallToActionMobile(title, color),
            tablet: CallToActionTabletDesktop(title, color),
          );
        });
  }
}
