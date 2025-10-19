import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otex_app_task/Core/utils/app_images.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(shape: OvalBorder() , color: Color(0xFFEEF8ED)),
      //child: SvgPicture.asset(Assets.imagesNotification),
    );
  }
}