import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:equatable/equatable.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    String? apiKey = dotenv.env['API_KEY'];
    on<FetchWeater>((event, emit) async {
      emit(WeatherLoading());
      try{
        WeatherFactory wf = WeatherFactory(apiKey!, language: Language.ENGLISH);

        // Position position = await Geolocator.getCurrentPosition();

        Weather weather = await wf.currentWeatherByLocation(
            event.position.latitude,
            event.position.longitude);
        print(weather);
        emit(WeatherSuccess(weather));
      }catch(e){
        emit(WeatherFailure());
      }
    });
  }
}
