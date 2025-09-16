import 'package:e_commerce/core/routing/route_path.dart';
import 'package:e_commerce/core/utils/constants/app_values.dart';
import 'package:e_commerce/features/onboarding/data/model/onboarding_model.dart';
import 'package:e_commerce/features/onboarding/presentation/view/onboarding_details_column.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key, required this.onboardings});
  final List<OnboardingModel> onboardings;

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void finishOnboarding() {
    context.goNamed(RoutePath.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              finishOnboarding();
            },
            child: Text('Skip'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_currentIndex == widget.onboardings.length - 1) {
            finishOnboarding();
          } else {
            _pageController.animateToPage(
              _currentIndex + 1,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          }
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppValues.appBarHeight,
          horizontal: AppValues.md,
        ),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (value) {
                _currentIndex = value;
              },
              children: List.generate(widget.onboardings.length, (index) {
                return OnboardingDetailsColumn(
                  onboardingModel: widget.onboardings[index],
                );
              }),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: widget.onboardings.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
