import 'package:e_commerce/core/di/setup.dart';
import 'package:e_commerce/core/utils/simple_bloc_observer.dart';
import 'package:e_commerce/ecommerce_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();

  await setup();

  runApp(const ShopEase());
}
