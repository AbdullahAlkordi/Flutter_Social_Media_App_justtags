class AppRouter {
  String name;
  String path;
  AppRouter({
    required this.name,
    required this.path,
  });
}

class Routers {
  static AppRouter authenticationScreen =
      AppRouter(name: "/authentication", path: "/authentication");
  static AppRouter onBoardingScreen =
      AppRouter(name: "/onboarding", path: "/onboarding");
  static AppRouter loginScreen = AppRouter(name: "/login", path: "/login");
  static AppRouter signupScreen = AppRouter(name: "/signip", path: "/signup");
  static AppRouter forgetPasswordScreen =
      AppRouter(name: "/forgetpassword", path: "/forgetpassword");
  static AppRouter newPasswordScreen =
      AppRouter(name: "/newpassword", path: "/newpassword");
  static AppRouter otpVerificationScreen =
      AppRouter(name: "/otpverification", path: "/otpverification");
  static AppRouter passwordChangedScreen =
      AppRouter(name: "/passwordchanges", path: "/passwordchanges");
}
