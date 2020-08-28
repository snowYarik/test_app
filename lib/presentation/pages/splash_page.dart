import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:test_app/presentation/blocs/splash_page_bloc/bloc.dart';
import 'package:test_app/presentation/pages/main_page.dart';
import 'package:test_app/presentation/resources/resourses.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashPageBloc>(
      create: (context) => SplashPageBloc()..add(StartLoading()),
      child: BlocListener<SplashPageBloc, SplashPageState>(
        listener: (context, state) {
          if (state is SplashPageLoaded) {
            _navigateToMainPage();
          }
        },
        child: Container(
          color: Colors.purple.shade100,
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
                  child: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(
                      Color(0XFFF086A3),
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
}
