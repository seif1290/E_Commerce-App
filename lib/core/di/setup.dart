import 'package:e_commerce/core/services/shared_prefs_service.dart';
import 'package:e_commerce/core/utils/secrets/app_secrets.dart';
import 'package:e_commerce/features/loading/data/repos/loading_repo.dart';
import 'package:e_commerce/features/loading/data/repos/loading_repo_impl.dart';
import 'package:e_commerce/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:e_commerce/features/auth/data/data_sources/auth_data_source.dart';
import 'package:e_commerce/features/auth/data/repos/auth_repo_impl.dart';
import 'package:e_commerce/features/auth/domain/repos/auth_repo.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  // Shared Preferences
  final prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPrefsService>(
    () => SharedPrefsService(prefs),
  );

  await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseApiKey,
  );

  // Supabase
  getIt.registerSingleton<SupabaseClient>(Supabase.instance.client);

  //Loading
  getIt.registerSingleton<LoadingRepo>(
    LoadingRepoImpl(sharedPrefsService: getIt.get<SharedPrefsService>()),
  );

  // Onboarding
  getIt.registerLazySingleton(
    () => OnboardingRepo(sharedPrefsService: getIt.get<SharedPrefsService>()),
  );

  // Auth

  _initAuth();
}

void _initAuth() {
  // Data Sources
  getIt.registerLazySingleton<SupabaseAuthDataSource>(
    () =>
        SupabaseAuthDataSourceImpl(supabaseClient: getIt.get<SupabaseClient>()),
  );

  // Repos
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(authDataSource: getIt.get<SupabaseAuthDataSource>()),
  );
}
