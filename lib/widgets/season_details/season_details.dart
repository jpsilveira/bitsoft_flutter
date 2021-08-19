import 'package:bitsoft_flutter/datamodels/season_details_model.dart';
import 'package:bitsoft_flutter/widgets/season_details/season_details_desktop.dart';
import 'package:bitsoft_flutter/widgets/season_details/season_details_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SeasonDetails extends StatelessWidget {
  final SeasonDetailsModel details;
  const SeasonDetails({Key? key, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: SeasonDetailsDesktop(details: details),
      mobile: SeasonDetailsMobile(details: details),
    );
  }
}
