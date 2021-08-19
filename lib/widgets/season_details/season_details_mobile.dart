import 'package:bitsoft_flutter/datamodels/season_details_model.dart';
import 'package:bitsoft_flutter/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SeasonDetailsMobile extends StatelessWidget {
  final SeasonDetailsModel details;
  const SeasonDetailsMobile({Key? key, required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Column(
        children: <Widget>[
          Text(
            details.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            details.description,
            style: descriptionTextStyle(sizingInformation.deviceScreenType),
          ),
        ],
      ),
    );
  }
}
