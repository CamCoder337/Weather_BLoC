import 'package:flutter/material.dart';

import '../constants/constants.dart';
class CircleError extends StatelessWidget {
  const CircleError({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,

      child: Center(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Something Went Wrong! Are you Online ?',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Constants.white,
            ),),
            SizedBox(height: 80),
            CircularProgressIndicator(
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
