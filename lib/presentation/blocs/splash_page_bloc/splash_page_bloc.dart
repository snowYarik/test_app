import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/presentation/blocs/splash_page_bloc/bloc.dart';

class SplashPageBloc extends Bloc<SplashPageEvent, SplashPageState> {
  SplashPageBloc() : super(SplashPageInited());

  @override
  Stream<SplashPageState> mapEventToState(SplashPageEvent event) async* {
    if (event is StartLoading) {
      await Future.delayed(Duration(seconds: 2));
      yield SplashPageLoaded();
    }
  }
}
