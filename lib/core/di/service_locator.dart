import 'package:e_commerce/core/di/init_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final GetIt getIt = GetIt.instance;

void setup() async {
  // Call per feature initialization

  getIt.registerSingleton<SupabaseClient>(Supabase.instance.client);

  initAuth();
}
