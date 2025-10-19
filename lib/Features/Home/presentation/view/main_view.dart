import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';
import 'package:otex_app_task/Features/Home/data/repos/product_repo_impl.dart';
import 'package:otex_app_task/Features/Home/domain/repos/product_repo.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/main_view_body.dart';
import 'package:otex_app_task/Features/cubit/product/product_cubit.dart';
import 'package:otex_app_task/Features/pofile_account/presentation/views/profile.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const routeName = 'home_view';

  @override
  State<MainView> createState() => _MainViewState();
}

final List<BottomNavigationBarItem> _navItems = [
  BottomNavigationBarItem(icon: Icon(Icons.bungalow_outlined), label: 'الرئيسية'),
  BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: 'محادثة'),
  BottomNavigationBarItem(icon: Icon(Icons.local_hospital_outlined , color: Color(0xff0062E2),), label: 'أضف اعلان', ) ,
  BottomNavigationBarItem(icon: Icon(Icons.dataset_outlined), label: 'اعلاناتي'),
  BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'حساب'),
];

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(ProductRepoImpl())..fetchAllProducts()..fetchCategories(),
      child: Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.transparent,
                  blurRadius: 4,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            child: BottomNavigationBar(
              currentIndex: currentViewIndex,
              onTap: (index) {
                setState(() {
                  currentViewIndex = index;
                });
                  if (index == 4) { 
                    Navigator.pushNamed(context, Profile.routeName);
                }
                
              },
              items: _navItems,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              selectedLabelStyle: TextStyles.medium14,
              unselectedLabelStyle: TextStyles.medium14,
              
            ),
          ),
          body: SafeArea(child: MainViewBody()),
        ),
    );
  }
}
