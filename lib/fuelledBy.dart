import 'package:flutter/material.dart';

class FuelledByInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'fuelled by :',
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            'Hobby Networking',
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
