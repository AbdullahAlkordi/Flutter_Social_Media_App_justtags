// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:justtags/presentation/manager/onboarding_cubit/on_boarding_states.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../manager/onboarding_cubit/on_boarding_cubit.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const IconData iconDone = Icons.celebration;
    const IconData iconNext = Icons.chevron_right;
    const String textDone = 'Finish';
    const String textNext = 'Next';
    return BlocConsumer<AppIntroCubit, AppIntroStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppIntroCubit cubit = AppIntroCubit.get(context);

        return Scaffold(
          body: SafeArea(
            minimum: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (index) {
                      cubit.nextOnBoarding(index: index);
                      cubit.isLastPage = index == cubit.items.length - 1;
                      print('index : $index');
                      print('value : ${cubit.isLastPage}');
                    },
                    controller: cubit.pageController,
                    itemCount: cubit.items.length,
                    itemBuilder: (context, index) {
                      return cubit.animated(
                          controller: cubit.pageController, index: index);
                    },
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        if (cubit.isLastPage) {
                          cubit.onBoardingCompleted(context);
                        } else {
                          cubit.pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      icon: Icon(cubit.isLastPage ? iconDone : iconNext),
                      label: Text(cubit.isLastPage ? textDone : textNext),
                    ),
                    const Spacer(),
                    SmoothPageIndicator(
                      controller: cubit.pageController,
                      count: cubit.items.length,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        dotHeight: 10.0,
                        expansionFactor: 4,
                        dotWidth: 10,
                        spacing: 5,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class OnboardingItem {
  final String headline;
  final String subTitle;
  final String image;
  OnboardingItem({
    required this.headline,
    required this.subTitle,
    required this.image,
  });
}
