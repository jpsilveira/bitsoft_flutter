import 'package:bitsoft_flutter/views/home/home_content_desktop.dart';
import 'package:bitsoft_flutter/views/home/home_content_mobile.dart';
import 'package:bitsoft_flutter/widgets/centered_view/centered_view.dart';
import 'package:bitsoft_flutter/widgets/navigation_bar/navigation_bar.dart';
import 'package:bitsoft_flutter/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          Column(
            children: [
              const NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: const HomeContentMobile(),
                  desktop: const HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
