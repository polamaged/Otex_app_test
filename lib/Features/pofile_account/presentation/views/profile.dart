import 'package:flutter/material.dart';
import 'package:otex_app_task/Features/pofile_account/presentation/views/widgets/profile_body_view.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static const routeName = 'profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileBodyView(),
    );
  }
}