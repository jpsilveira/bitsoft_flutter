import 'package:bitsoft_flutter/widgets/call_to_action/call_to_action.dart';
import 'package:bitsoft_flutter/widgets/centered_view/centered_view.dart';
import 'package:bitsoft_flutter/widgets/course_details/course_details.dart';
import 'package:bitsoft_flutter/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        Column(
          children: [
            NavigationBar(),
            Expanded(
              child: Row(
                children: const [
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallTAction(
                        title: 'Join Course',
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
