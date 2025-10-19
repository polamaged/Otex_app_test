import 'package:flutter/material.dart';
import 'package:otex_app_task/Features/Home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/active_item.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/inactive_item.dart';


class NavigationBarITem extends StatelessWidget {
  const NavigationBarITem({
    super.key,
    required this.iselected,
    required this.bottomNavigationBarEntity,
  });

  final bool iselected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return iselected
        ? ActiveItem(image:bottomNavigationBarEntity.activeImage, text:bottomNavigationBarEntity.name,)
        : InActiveItem(image: bottomNavigationBarEntity.inActiveImage);
  }
}
