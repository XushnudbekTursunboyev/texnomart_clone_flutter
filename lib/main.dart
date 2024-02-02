import 'package:flutter/material.dart';
import 'package:texnomart_clone_flutter/data/source/local/my_hive_helper.dart';
import 'package:texnomart_clone_flutter/di/di.dart';
import 'package:texnomart_clone_flutter/ui/SplashScreen.dart';
import 'package:texnomart_clone_flutter/ui/card_screen.dart';
import 'package:texnomart_clone_flutter/ui/categories_screen.dart';
import 'package:texnomart_clone_flutter/ui/characters_screen.dart';
import 'package:texnomart_clone_flutter/ui/home_screen.dart';
import 'package:texnomart_clone_flutter/ui/main_screen.dart';
import 'package:texnomart_clone_flutter/ui/orders_screen.dart';
import 'package:texnomart_clone_flutter/ui/products_screen.dart';
import 'package:texnomart_clone_flutter/ui/profile_screen.dart';
import 'package:texnomart_clone_flutter/ui/stores_screen.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

void main() {
  AndroidYandexMap.useAndroidViewSurface = false;
  WidgetsFlutterBinding.ensureInitialized();
  HiveHelper.init();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        'home': (context) => const DashboardPage(currentPage: 0),
        'main': (context) => const MainScreen(),
        'categories': (context) => const CategoriesScreen(),
        'orders': (context) => const OrdersScreen(),
        'profile': (context) => const ProfileScreen(),
        'card': (context) => const CardScreen(),
        'products': (context) => const ProductsScreen("huawei-smartfony", "Smartfonlar"),
        'stores' : (context) => const StoresScreen(),
        'characters' : (context) => const CharactersScreen([])
      },
    );
  }
}
