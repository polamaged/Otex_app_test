import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';
import 'package:otex_app_task/Core/widgets/notification_widget.dart';


AppBar buildAppBar(context,{required String title , bool showbackbutton = true , bool shownotification = true}) {
    return AppBar(
      actions: [
        Visibility(
          visible: shownotification,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: NotificationWidget(),
          ),
        ),
      ],
      leading: Visibility(
        visible: showbackbutton,
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios_new)),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(title, style: TextStyles.bold19),
    );
  }