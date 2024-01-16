import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_bloc/constants/constants.dart';
import 'package:weather_bloc/constants/assets.dart';


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
        padding: Constants.bodyPadding,
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
                    color: Constants.purple
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
                      color: Constants.purple
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1.3),//(3)
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Constants.orange
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        '📍 73 Av. de Yansoki',
                        style: TextStyle(
                          color: Constants.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),),
                    SizedBox(height: 8,),
                    Text(
                      'Good Morning',
                      style: TextStyle(
                        color: Constants.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                    Image.asset(Assets.thunderStormImage),
                    Center(
                      child: Text(
                        '21°C',
                        style: TextStyle(
                          color: Constants.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 55,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'THUNDERSTORM',
                        style: TextStyle(
                          color: Constants.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Center(
                      child: Text(
                        'Friday 16 🌐 9:46am',
                        style: TextStyle(
                          color: Constants.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16 ,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(Assets.dawnImage, scale: 8),
                            SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunrise',
                                  style: TextStyle(
                                    color: Constants.white,
                                    fontWeight: FontWeight.w400,
                                    // fontSize: 20,
                                  ),),
                                SizedBox(height: 3),
                                Text(
                                  '12:07am',
                                  style: TextStyle(
                                    color: Constants.white,
                                    fontWeight: FontWeight.w700,
                                    // fontSize: 25,
                                  ),),
                        ],)
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(Assets.moonImage, scale: 8),
                            SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunset',
                                  style: TextStyle(
                                    color: Constants.white,
                                    fontWeight: FontWeight.w400,
                                    // fontSize: 20,
                                  ),),
                                SizedBox(height: 3),
                                Text(
                                  ' 9:00pm',
                                  style: TextStyle(
                                    color: Constants.white,
                                    fontWeight: FontWeight.w700,
                                    // fontSize: 25,
                                  ),),
                              ],)
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 1,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(Assets.maxTempIamge, scale: 8),
                            SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temp Max',
                                  style: TextStyle(
                                    color: Constants.white,
                                    fontWeight: FontWeight.w400,
                                    // fontSize: 20,
                                  ),),
                                SizedBox(height: 3),
                                Text(
                                  '12°C',
                                  style: TextStyle(
                                    color: Constants.white,
                                    fontWeight: FontWeight.w700,
                                    // fontSize: 25,
                                  ),),
                              ],)
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(Assets.minTempIamge, scale: 8),
                            SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temp Min',
                                  style: TextStyle(
                                    color: Constants.white,
                                    fontWeight: FontWeight.w400,
                                    // fontSize: 20,
                                  ),),
                                SizedBox(height: 3),
                                Text(
                                  '8°C',
                                  style: TextStyle(
                                    color: Constants.white,
                                    fontWeight: FontWeight.w700,
                                    // fontSize: 25,
                                  ),),
                              ],)
                          ],
                        ),
                      ],
                    ),
                  ],

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
