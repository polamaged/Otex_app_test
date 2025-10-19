import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_images.dart';

class TestImage extends StatelessWidget {
  const TestImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(Assets.imagesMobile),
    );
  }
}
