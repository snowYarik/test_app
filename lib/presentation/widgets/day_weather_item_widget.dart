import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/domain/entities/daily_weather.dart';
import 'package:test_app/presentation/widgets/day_of_mounth_widget.dart';

class DayWeatherItemWidget extends StatelessWidget {
  const DayWeatherItemWidget({
    Key key,
    DailyWeather dailyWeather,
  })  : _dailyWeather = dailyWeather,
        super(key: key);

  final DailyWeather _dailyWeather;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(_dailyWeather.weatherOptions.dateTime.weekday.toString()),
        DayOfMounthWidget(
            dayOfMonth: _dailyWeather.weatherOptions.dateTime.day),
        Image.network(
            'http://openweathermap.org/img/w/${_dailyWeather.weather.iconPath}.png'),
        Text('${_dailyWeather.temperature.day}\u2103'),
        Text(_dailyWeather.temperature.night.toString()),
        const VerticalDivider(
          width: double.maxFinite,
          color: Colors.black,
        ),
        Text('${_dailyWeather.weatherOptions.humidity}%')
      ],
    );
  }
}
