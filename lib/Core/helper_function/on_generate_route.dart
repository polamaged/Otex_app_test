
import 'package:flutter/material.dart';
import 'package:otex_app_task/Features/Filter/presentation/views/filter_view.dart';
import 'package:otex_app_task/Features/Home/presentation/view/main_view.dart';
import 'package:otex_app_task/Features/pofile_account/presentation/views/profile.dart';


Route<dynamic>onGenerateRoute(RouteSettings settings)
{
  switch(settings.name)
  {
     case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView(),);
      case Profile.routeName:
      return MaterialPageRoute(builder: (context) => const Profile(),);
      case FilterView.routeName:
      return MaterialPageRoute(builder: (context) => const FilterView(),);
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold(),);
  }
  
}