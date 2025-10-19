import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/catagory_header.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/catagory_tabs.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/grid_product_card.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/home_app_bar.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/sub_catagory.dart';
import 'package:otex_app_task/Features/cubit/product/product_cubit.dart';
import 'package:otex_app_task/Features/cubit/product/product_state.dart';

class MainViewBody extends StatefulWidget {
  const MainViewBody({super.key});

  @override
  State<MainViewBody> createState() => _MainViewBodyState();
}

class _MainViewBodyState extends State<MainViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().fetchAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            HomeAppBar(),
            CatagoryTabs(),
            const SizedBox(height: 33),
            SubCatagory(),
            const SizedBox(height: 33),
            CatagoryHeader(),
            const SizedBox(height: 20),
            BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is ProductLoaded) {
                  log("Displaying products: ${state.products}");
                  return GridProductCard(products: state.products);
                } else if (state is ProductError) {
                  return Center(child: Text(state.message));
                }
                return const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
