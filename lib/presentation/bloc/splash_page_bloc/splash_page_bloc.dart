import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/domain/repositories/i_weather_repository.dart';
import 'package:test_app/domain/use_cases/weather_use_cases/get_forecast.dart';
import 'package:test_app/injector.dart';
import 'package:test_app/presentation/bloc/splash_page_bloc/bloc.dart';
import 'package:test_app/presentation/push_notification/push_notification_mixin.dart';

class SplashPageBloc extends Bloc<SplashPageEvent, SplashPageState>
    with PushNotificationsMixin {
  SplashPageBloc() : super(SplashPageInited());

  @override
  Stream<SplashPageState> mapEventToState(SplashPageEvent event) async* {
    if (event is StartLoading) {
      initPushNotifications();
      final t =
          await GetForecast(weatherRepository: getIt<IWeatherRepository>())
              .execute(
                  params: const Params(
                      latitude: 49.988358,
                      longitude: 36.232845,
                      exclude: 'minutely'));
      await Future.delayed(const Duration(seconds: 2));
      yield SignedIn();
    }
  }
}
