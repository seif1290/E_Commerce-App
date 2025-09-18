import 'package:flutter/material.dart';

class LoaderTransparent extends StatelessWidget {
  const LoaderTransparent({super.key});

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
