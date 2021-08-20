import 'package:bitsoft_flutter/datamodels/season_details_model.dart';
import 'package:bitsoft_flutter/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SeasonDetailsDesktop extends StatelessWidget {
  final SeasonDetailsModel details;
  const SeasonDetailsDesktop({Key? key, required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            details.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          SizedBox(
            width: 50,
          ),
          Expanded(
            child: Text(
              details.description,
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
          ),
        ],
      ),
    );
  }
}
