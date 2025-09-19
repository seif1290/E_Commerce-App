import 'package:e_commerce/core/di/setup.dart';
import 'package:e_commerce/features/auth/data/data_sources/auth_data_source.dart';
import 'package:e_commerce/features/auth/data/repos/auth_repo_impl.dart';
import 'package:e_commerce/features/auth/domain/repos/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void initAuth() {
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
