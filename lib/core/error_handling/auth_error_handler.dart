import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthErrorHandler {
  AuthErrorHandler._();

  /// Map Supabase Auth errors into user-friendly messages
  static String mapAuthErrorToMessage(AuthException e) {
    if (e.code == null && e.statusCode == null) {
      return AppStrings.internetConnectionErrorMsg;
    }
    if (e.code != null) {
      switch (e.code) {
        case 'email_exists':
          return 'This email is already registered. Please try logging in.';
        case 'email_address_invalid':
          return 'The email address is not valid.';
        case 'invalid_credentials':
          return 'Invalid email or password.';
        case 'email_not_confirmed':
          return 'Your email is not confirmed. Please try to sign up again with a valid email.';
        case 'user_not_found':
          return 'No account found with this email.';
        case 'weak_password':
          return 'Your password is too weak.';
        case 'password_length_error':
          return 'Password must meet the required length.';
        case 'invalid_refresh_token':
          return 'Your session has expired. Please log in again.';
        case 'invalid_grant':
          return 'Invalid login request. Please try again.';
        case 'otp_expired':
          return 'The one-time password has expired. Please request a new one.';
        case 'otp_disabled':
          return 'One-time passwords are disabled for this account.';
        case 'otp_already_used':
          return 'This one-time password has already been used.';
        case 'provider_not_found':
          return 'The selected authentication provider is not supported.';
        case 'identity_already_exists':
          return 'This identity already exists for another account.';
        case 'unauthorized_client':
          return 'You are not authorized to perform this action.';
        case 'server_error':
          return 'A server error occurred. Please try again later.';
        case 'rate_limit_exceeded':
          return 'Too many attempts. Please wait before trying again.';
        default:
          return AppStrings.somethingWrongMsg;
      }
    }

    // If code is null, fallback to statusCode
    switch (e.statusCode) {
      case '400':
        return 'Bad request. Please check your input and try again.';
      case '401':
        return 'Unauthorized. Please check your email or password.';
      case '403':
        return 'Access denied. You may not have permission to perform this action.';
      case '404':
        return 'Service not found. Please try again later.';
      case '429':
        return 'Too many requests. Please slow down and try again shortly.';
      case '500':
        return 'Server error. Please try again later.';
      default:
        return e.message.isNotEmpty
            ? e.message
            : 'An unexpected error occurred.';
    }
  }
}
