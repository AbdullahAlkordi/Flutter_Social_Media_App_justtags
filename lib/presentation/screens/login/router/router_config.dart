import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../screens/authentication_ui.dart';
import '../screens/forget_password.dart';
import '../screens/login_page.dart';
import '../screens/new_password.dart';
import '../screens/otp_verification.dart';
import '../screens/password_changed.dart';
import '../screens/signup_page.dart';
import 'router.dart';

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: Routers.authenticationScreen.path,
    name: Routers.authenticationScreen.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: AuthenticationUI());
    },
  ),
  GoRoute(
    path: Routers.loginScreen.path,
    name: Routers.loginScreen.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: LoginPage());
    },
  ),
  GoRoute(
    path: Routers.signupScreen.path,
    name: Routers.signupScreen.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: SignupPage());
    },
  ),
  GoRoute(
    path: Routers.forgetPasswordScreen.path,
    name: Routers.forgetPasswordScreen.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: ForgetPasswordPage());
    },
  ),
  GoRoute(
    path: Routers.newPasswordScreen.path,
    name: Routers.newPasswordScreen.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: NewPasswordPage());
    },
  ),
  GoRoute(
    path: Routers.otpVerificationScreen.path,
    name: Routers.otpVerificationScreen.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: OtpVerificationPage());
    },
  ),
  GoRoute(
    path: Routers.passwordChangedScreen.path,
    name: Routers.passwordChangedScreen.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: PasswordChangesPage());
    },
  )
]);
