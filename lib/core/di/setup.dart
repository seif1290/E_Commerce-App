import 'package:e_commerce/core/di/init_auth.dart';
import 'package:e_commerce/core/services/shared_preferences_service.dart';
import 'package:e_commerce/core/utils/secrets/app_secrets.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  // Shared Preferences
  final prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => SharedPrefsService(prefs));

  await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseApiKey,
  );

  // Supabase
  getIt.registerSingleton<SupabaseClient>(Supabase.instance.client);

  initAuth();
}
