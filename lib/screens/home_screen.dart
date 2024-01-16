import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_bloc/constants.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: screenHeight,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(9, -0.3),//(3)
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: purple
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-9, -0.3),//(-3)
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: purple
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1.3),//(3)
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: BoxDecoration(
                      color: orange
                  ),
                ),
              ),
              BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.transparent),
                  ),
              ),
              SizedBox(
                width: screenWidth,
                height: screenHeight,
                child: Column(

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
