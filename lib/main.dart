import 'package:e_commerce/core/di/service_locator.dart';
import 'package:e_commerce/core/secrets/app_secrets.dart';
import 'package:e_commerce/core/utils/simple_bloc_observer.dart';
import 'package:e_commerce/ecommerce_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseApiKey,
  );
  setup();

  runApp(const ShopEase());
}
