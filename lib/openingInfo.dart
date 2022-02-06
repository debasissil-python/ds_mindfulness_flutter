import 'package:flutter/material.dart';

class OpeningInfo extends StatelessWidget {
  const OpeningInfo(this.textDetails);

  final Widget? textDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
      child: textDetails,
    );
  }
}
