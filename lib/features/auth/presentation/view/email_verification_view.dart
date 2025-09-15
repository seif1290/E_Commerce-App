import 'package:e_commerce/core/utils/constants/app_images.dart';
import 'package:e_commerce/core/utils/constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/app_values.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmailVerificationView extends StatefulWidget {
  final String email;
  const EmailVerificationView({super.key, required this.email});

  @override
  State<EmailVerificationView> createState() => _EmailVerificationViewState();
}

class _EmailVerificationViewState extends State<EmailVerificationView> {
  bool canSendEmail = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Icon(Icons.close),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppValues.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 200.0, child: Image.asset(AppImages.appLogo)),

              // Title
              Text(
                AppStrings.emailVerificationTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppValues.spaceBtwItems),

              // Email
              Text(
                widget.email,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppValues.spaceBtwItems),

              // Description
              Text(
                AppStrings.emailVerificationSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppValues.spaceBtwItems),

              // Continue Button
              ElevatedButton(
                onPressed: () {
                  // TODO: Continue action
                },
                child: const Text(AppStrings.emailVerificationButton),
              ),
              // StreamBuilder(
              //   stream: count(),
              //   builder: (context, snapshot) {
              //     print('rebule');

              //     return Text(snapshot.data.toString());
              //   },
              // ),
              const SizedBox(height: AppValues.spaceBtwItems),

              // Resend Email
              TextButton(
                onPressed: canSendEmail
                    ? () {
                        // TODO: Resend email action
                      }
                    : null,
                child: const Text(
                  'Resend Email',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stream<int> _countDown() async* {
    canSendEmail = false;
    for (var i = 60; i >= 0; i--) {
      if (i == 0) {
        canSendEmail = true;
      }
      yield i;
      await Future.delayed(Duration(seconds: 1));
    }
  }
}
