import 'package:flutter/material.dart';
import '../../state/PjobState.dart';

class ApplicationData extends StatelessWidget {
  const ApplicationData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pjob = PjobStateContainer.of(context).pjobNumnber;
    return Container(
      child: Text(
        '$pjob'
      ),
    );
  }
}