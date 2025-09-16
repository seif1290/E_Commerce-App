import 'package:e_commerce/core/utils/constants/ui_constants/app_components.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_values.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({
    super.key,
    required this.title,
    required this.subTitle,
    required this.assetPath,
  });
  final String title;
  final String subTitle;
  final String assetPath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      body: Padding(
        padding: AppComponents.pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(assetPath, height: 200.0),
            Text(title, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: AppValues.spaceBtwItems),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppValues.spaceBtwSections),

            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: Text(AppStrings.done),
            ),
          ],
        ),
      ),
    );
  }
}
