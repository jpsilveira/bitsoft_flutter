import 'package:bitsoft_flutter/widgets/call_to_action/call_to_action.dart';
import 'package:bitsoft_flutter/widgets/course_details/course_details.dart';
import 'package:flutter/material.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CourseDetails(),
        SizedBox(
          height: 100,
        ),
        CallToAction('Join Course'),
      ],
    );
  }
}
