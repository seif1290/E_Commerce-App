import 'package:flutter/material.dart';

class LoadingTransparent extends StatelessWidget {
  const LoadingTransparent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black54,
      width: double.infinity,
      height: double.infinity,
      child: const CircularProgressIndicator(),
    );
  }
}
