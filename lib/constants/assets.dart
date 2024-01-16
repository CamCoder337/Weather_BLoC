import 'package:flutter/cupertino.dart';

class Assets {
  Assets._();
  static const String folder = 'assets/';

  static const defaultImage = '${folder}1.png';
  static const thunderStormImage = '${folder}1.png';
  static const smallRainyImage = '${folder}2.png';
  static const heavyRainyImage = '${folder}3.png';
  static const cloudySnowImage = '${folder}4.png';
  static const cloudyMistImage = '${folder}5.png';
  static const sunshineImage = '${folder}6.png';
  static const cloudySunshineImage = '${folder}7.png';
  static const cloudyImage = '${folder}8.png';
  static const cloudyWindImage = '${folder}9.png';
  static const dawnImage = '${folder}11.png';
  static const moonImage = '${folder}12.png';
  static const maxTempIamge = '${folder}13.png';
  static const minTempIamge = '${folder}14.png';
}

Widget getWeatherIcon(int code){
  switch (code) {
    case >= 200 && < 300 :
      return Image.asset(Assets.thunderStormImage);
    case >= 300 && < 400 :
      return Image.asset(Assets.smallRainyImage);
    case >= 500 && < 600 :
      return Image.asset(Assets.heavyRainyImage);
    case >= 600 && < 700 :
      return Image.asset(Assets.cloudySnowImage);
    case >= 700 && < 800 :
      return Image.asset(Assets.cloudyMistImage);
    case == 800 :
      return Image.asset(Assets.sunshineImage);
    case > 800 && <= 804 :
      return Image.asset(Assets.cloudySunshineImage);
    default:
      return Image.asset(Assets.cloudySunshineImage);
  }
}
