import 'package:e_commerce/features/auth/presentation/view/auth_check_box.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AgreeToPrivacySectionRegister extends StatelessWidget {
  const AgreeToPrivacySectionRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AuthCheckBox(),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodySmall,
              children: [
                const TextSpan(text: 'I agree to '),
                TextSpan(
                  text: 'Privacy Policy',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Open Privacy Policy link
                    },
                ),
                const TextSpan(text: ' and '),
                TextSpan(
                  text: 'Terms of Use',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Open Terms of Use link
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
