

import 'package:otex_app_task/Core/utils/app_images.dart';

class BottomNavigationBarEntity {

 final String activeImage , inActiveImage;
  final String name;

  BottomNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
    required this.name,
  });


}

List<BottomNavigationBarEntity> bottomNavigationBarItems = [
  BottomNavigationBarEntity(
    activeImage: Assets.imagesHomeActive,
    inActiveImage:  Assets.imagesHomeActive,
    name: 'الرئيسية',
  ),
  BottomNavigationBarEntity(
    activeImage:   Assets.imagesChat,
    inActiveImage: Assets.imagesChat,
    name: 'محادثة',
  ),
  BottomNavigationBarEntity(
    activeImage:  Assets.imagesAddBox,
    inActiveImage: Assets.imagesAddBox,
    name: 'اضف اعلان',
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imagesA3lnaty,
    inActiveImage:Assets.imagesA3lnaty,
    name: 'اعلاناتي',
  ),
   BottomNavigationBarEntity(
    activeImage: Assets.imagesAccountCircle,
    inActiveImage:Assets.imagesAccountCircle,
    name: 'حسابي',
  ),
];