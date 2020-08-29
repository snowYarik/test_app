import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:test_app/presentation/bloc/splash_page_bloc/bloc.dart';
import 'package:test_app/presentation/pages/main_page.dart';
import 'package:test_app/presentation/pages/sign_in_page.dart';
import 'package:test_app/presentation/resources/resourses.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashPageBloc>(
      create: (context) => SplashPageBloc()..add(StartLoading()),
      child: BlocListener<SplashPageBloc, SplashPageState>(
        listener: (context, state) {
          if (state is SignedIn) {
            _navigateToSignInPage();
          } else {}
        },
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  hourse,
                  width: 250.0,
                  height: 250.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(
                      Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _navigateToMainPage() {
    return Get.off(MainPage());
  }

  Future<void> _navigateToSignInPage() {
    return Get.off(SignInPage());
  }
}
