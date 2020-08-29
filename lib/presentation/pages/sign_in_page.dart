import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:test_app/presentation/bloc/sign_in_page_bloc/bloc.dart';
import 'package:test_app/presentation/pages/main_page.dart';
import 'package:test_app/presentation/widgets/sign_in_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInPageBloc>(
      create: (context) => SignInPageBloc(),
      child: BlocListener<SignInPageBloc, SignInPageState>(
        listener: (context, state) {
          if (state is SignedIn) {
            _navigateToMainPage();
          }
        },
        child: Builder(
          builder: (context) => Material(
            child: Container(
              color: Theme.of(context).backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sign in'),
                  const SizedBox(
                    height: 30.0,
                  ),
                  SignInButton(
                    onPressed: () {
                      BlocProvider.of<SignInPageBloc>(context)
                          .add(SignInWithGoogle());
                    },
                    label: 'Google',
                    icon: const Icon(
                      FontAwesomeIcons.google,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SignInButton(
                    onPressed: () {
                      BlocProvider.of<SignInPageBloc>(context)
                          .add(SignInWithFacebook());
                    },
                    label: 'Facebook',
                    icon: const Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _navigateToMainPage() {
    return Get.off(MainPage());
  }
}
