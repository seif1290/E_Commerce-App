import 'package:e_commerce/core/utils/constants/data_constants/app_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  final SharedPreferences _prefs;
  SharedPrefsService(this._prefs) {
    startOnBoarding();
  }

  Future<void> startOnBoarding() async {
    await _prefs.setBool(AppKeys.isOnboardingFinished, false);
  }

  Future<void> finishOnBoarding() async {
    await _prefs.setBool(AppKeys.isOnboardingFinished, true);
  }

  bool isOnboardingFinished() =>
      _prefs.getBool(AppKeys.isOnboardingFinished) ?? false;

  Future<void> clear() async {
    await _prefs.clear();
  }
}
