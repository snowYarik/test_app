import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/data/models/models.dart';
import 'package:test_app/presentation/bloc/splash_page_bloc/bloc.dart';
import 'package:test_app/presentation/push_notification/push_notification_mixin.dart';

class SplashPageBloc extends Bloc<SplashPageEvent, SplashPageState>
    with PushNotificationsMixin {
  SplashPageBloc() : super(SplashPageInited());

  @override
  Stream<SplashPageState> mapEventToState(SplashPageEvent event) async* {
    if (event is StartLoading) {
      initPushNotifications();
      await Future.delayed(const Duration(seconds: 2));
      yield SignedIn();
    }
  }
}
