part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable{
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class FetchWeater extends WeatherEvent{
  final Position position;

  const FetchWeater(this.position);

  @override
  List<Object> get props => [position];
}
