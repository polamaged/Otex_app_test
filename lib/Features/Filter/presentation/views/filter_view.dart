import 'package:flutter/material.dart';
import 'package:otex_app_task/Features/Filter/presentation/views/widgets/filter_view_body.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  static const String routeName = 'filter_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: FilterViewBody()),
    );
  }
}