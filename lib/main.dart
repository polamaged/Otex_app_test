import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:otex_app_task/Core/helper_function/on_generate_route.dart';
import 'package:otex_app_task/Core/services/custom_bloc_observer.dart';
import 'package:otex_app_task/Core/services/database_service.dart';
import 'package:otex_app_task/Features/Home/presentation/view/main_view.dart';

void main() async{
  Bloc.observer = CustomBlocObserver();
   WidgetsFlutterBinding.ensureInitialized();
   final db = DatabaseService.instance;
    final product = await db.getData('product');
     print('📊 Users from database: $product');
  runApp(const OtexApp());
}

class OtexApp extends StatelessWidget {
  const OtexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      locale: const Locale('ar'),

      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Tajawal',
      ),

      onGenerateRoute: onGenerateRoute,
      initialRoute: MainView.routeName,
    );
  }
}
