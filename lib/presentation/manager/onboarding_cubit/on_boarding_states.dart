import 'package:flutter/material.dart';

abstract class AppIntroStates {}

// cubit initial state
class AppIntroInitialState extends AppIntroStates {}

// moving forword or backword in onboarding content state
class OnBoardingNextState extends AppIntroStates {
  final int index;
  OnBoardingNextState({required this.index});
}

class OnBoardingCheckState extends AppIntroStates {
  final String text;
  final IconData textPrefix;

  OnBoardingCheckState({required this.textPrefix, required this.text});
}

// complete reading onboarding state
class OnBoardingCompleteState extends AppIntroStates {}

// starting the auth proccesses initial state
class AuthInitialState extends AppIntroStates {}

// sending the auth to login Screen state
class AuthSendLoginState extends AppIntroStates {}

// starting the auth login proccess loading state
class AuthLoginLoadingState extends AppIntroStates {}

// finishing the auth login proccess state
class AuthLoginSuccessState extends AppIntroStates {}

// finishing the auth login proccess with some errors state
class AuthLoginErrorState extends AppIntroStates {
  final String e;

  AuthLoginErrorState({required this.e});
}

// sending the auth to signup Screen state
class AuthSendSignupState extends AppIntroStates {}

// starting the auth signup proccess loading state
class AuthSignupLoadingState extends AppIntroStates {}

// finishing the auth signup proccess state
class AuthSignupSuccessState extends AppIntroStates {}

// finishing the auth signup proccess with some errors state
class AuthSignupErrorState extends AppIntroStates {
  final String e;

  AuthSignupErrorState({required this.e});
}

// sending the auth to rest password Screen state
class AuthSendRestPasswordState extends AppIntroStates {}

// starting the auth rest proccess loading state
class AuthRestPasswordLoadingState extends AppIntroStates {}

// finishing the auth rest proccess state
class AuthRestPasswordSuccessState extends AppIntroStates {}

// finishing the auth rest proccess with some errors state
class AuthRestPasswordErrorState extends AppIntroStates {
  final String e;

  AuthRestPasswordErrorState({required this.e});
}

// starting the auth Annonmyous login proccess loading state
class AuthLoginAnnonmyousLoadingState extends AppIntroStates {}

// finishing the auth Annonmyous login proccess state
class AuthLoginAnnonmyousSuccessState extends AppIntroStates {}

// finishing the auth Annonmyous login proccess with some errors state
class AuthLoginAnnonmyousErrorState extends AppIntroStates {
  final String e;

  AuthLoginAnnonmyousErrorState({required this.e});
}
