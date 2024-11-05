import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:justtags/presentation/screens/onboarding/widgets/onoarding_items_list.dart';
import '../../screens/login/screens/authentication_ui.dart';
import 'on_boarding_states.dart';

class AppIntroCubit extends Cubit<AppIntroStates> {
  AppIntroCubit() : super(AppIntroInitialState());

  static AppIntroCubit get(context) => BlocProvider.of(context);

  final PageController pageController = PageController();

  List<OnBoardingItemsList> items = [
    const OnBoardingItemsList(
      title: "Discover the world of cooking with TasteBuds",
      text:
          "Our chefs have been cooking for years and they have the best recipes in town. You can order it online and we will deliver it to your door",
      image: "assets/images/illustration1.png",
    ),
    const OnBoardingItemsList(
      title: "Explore Thousands of Delicious Recipes with us",
      text:
          "Discover new recipes tailored to your preferences and dietary needs",
      image: "assets/images/illustration2.png",
    ),
    const OnBoardingItemsList(
      title: "Find Your Next Kitchen Adventure",
      text: "Connect with a community of home cooks and foodies",
      image: "assets/images/illustration3.png",
    ),
    const OnBoardingItemsList(
      title: "We cook the best hamburger in town",
      text:
          "We cook the hamburger you had always dreamt of. You can order it online and we will deliver it to your door",
      image: "assets/images/illustration4.png",
    ),
  ];

  bool isLastPage = false;

  void nextOnBoarding({required int index}) =>
      emit(OnBoardingNextState(index: index));

  void onBoardingCompleted(context) {
    // CachHelper.saveData(
    //   key: 'onBoarding',
    //   value: true,
    // );
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => const AuthenticationUI(),
      ),
    );
    emit(OnBoardingCompleteState());
  }

  Widget animated({
    required PageController controller,
    required int index,
  }) =>
      AnimatedBuilder(
        animation: pageController,
        builder: (BuildContext context, Widget? child) {
          double value = 1.0;
          if (controller.position.haveDimensions) {
            value = controller.page! - index;
            value = (1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
          }
          return Transform.scale(
            scale: value,
            child: items[index],
          );
        },
      );
}
