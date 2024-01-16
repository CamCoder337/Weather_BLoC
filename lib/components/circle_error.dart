import 'package:flutter/material.dart';
class CircleError extends StatelessWidget {
  const CircleError({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

      child: Center(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Something Went Wrong! Are you Online ?',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.black,
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
