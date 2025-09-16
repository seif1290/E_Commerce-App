import 'package:e_commerce/core/secrets/app_secrets.dart';
import 'package:e_commerce/ecommerce_app.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseApiKey,
  );
  runApp(const ShopEase());
}
