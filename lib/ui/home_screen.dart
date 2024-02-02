import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:texnomart_clone_flutter/data/model/hive_model/product_holder.dart';
import 'package:texnomart_clone_flutter/presenter/provider/dashboard_provider.dart';
import 'package:texnomart_clone_flutter/ui/card_screen.dart';
import 'package:texnomart_clone_flutter/ui/categories_screen.dart';
import 'package:texnomart_clone_flutter/ui/detail_screen.dart';
import 'package:texnomart_clone_flutter/ui/favourite_screen.dart';
import 'package:texnomart_clone_flutter/ui/main_screen.dart';
import 'package:texnomart_clone_flutter/ui/orders_screen.dart';
import 'package:texnomart_clone_flutter/ui/profile_screen.dart';

class DashboardPage extends StatefulWidget {
  final int currentPage;
  final ProductHolder? productHolder;

  const DashboardPage({super.key, required this.currentPage, this.productHolder});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final PageStorageBucket bucket = PageStorageBucket();
  int currentTab = 0;
  ProductHolder productHolderData = ProductHolder(
      0,
      "",
      "",
      "",
      [],
      "",
      0,
      '',
      [],
      0,
      '',
      "",
      '',
      0,
      '',
      "",
      0,
      "",
      0,
      null,
      false,
      0);
  Widget currentScreen = const MainScreen();
  final List<Widget> screens = [
    const MainScreen(),
    const CategoriesScreen(),
    const CardScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
    DetailScreen(item: ProductHolder(
        0,
        "",
        "",
        "",
        [],
        "",
        0,
        '',
        [],
        0,
        '',
        "",
        '',
        0,
        '',
        "",
        0,
        "",
        0,
        null,
        false,
        0))
  ];

  @override
  void initState() {
    currentTab = widget.currentPage;
    productHolderData = widget.productHolder ?? productHolderData;
    currentTab == 2 ? currentScreen = const CardScreen() : const MainScreen();
    currentTab == 1 ? currentScreen = const CategoriesScreen() : const MainScreen();
    currentTab == 5 ? currentScreen = DetailScreen(item: productHolderData) : const MainScreen();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
  create: (BuildContext context) => DashboardProvider(),
  child: Consumer<DashboardProvider>(
  builder: (context, provider, child) {
  return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar:
      BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 2,
        height: 66,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                highlightColor: const Color(0xFFfbc100).withAlpha(60),
                splashColor: const Color(0xFFfbc100).withAlpha(60),
                minWidth: 30,
                onPressed: () {
                  setState(() {
                    currentScreen = screens[0];
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/home.png',
                      height: 24,
                      width: 24,
                      color: currentTab == 0 || currentTab == 5
                          ? const Color(0xFFfbc100)
                          : const Color(0xFF7D7D7D),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'Bosh sahifa',
                      style: GoogleFonts.ubuntu(
                        color: currentTab == 0 || currentTab == 5
                            ? const Color(0xFFfbc100)
                            : const Color(0xFF7D7D7D),
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                highlightColor: const Color(0xFFfbc100).withAlpha(60),
                splashColor: const Color(0xFFfbc100).withAlpha(60),
                minWidth: 30,
                onPressed: () {
                  setState(() {
                    currentScreen = screens[1];
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/search.png',
                      height: 24,
                      width: 24,
                      color: currentTab == 1
                          ? const Color(0xFFfbc100)
                          : const Color(0xFF7D7D7D),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'Katalog',
                      style: GoogleFonts.ubuntu(
                        color: currentTab == 1
                            ? const Color(0xFFfbc100)
                            : const Color(0xFF7D7D7D),
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                highlightColor: const Color(0xFFfbc100).withAlpha(60),
                splashColor: const Color(0xFFfbc100).withAlpha(60),
                minWidth: 30,
                onPressed: () {
                  setState(() {
                    currentScreen = screens[2];
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/cart.png',
                          height: 24,
                          width: 24,
                          color: currentTab == 2
                              ? const Color(0xFFfbc100)
                              : const Color(0xFF7D7D7D),
                        ),
                        Container(
                          padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              shape: BoxShape.circle
                            ),
                            child: Text('${context.watch<DashboardProvider>().count}', style: TextStyle(color: Colors.white),))
                      ],
                    ),
                
                    const SizedBox(height: 7),
                    Text(
                      'Savatcha',
                      style: GoogleFonts.ubuntu(
                        color: currentTab == 2
                            ? const Color(0xFFfbc100)
                            : const Color(0xFF7D7D7D),
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                highlightColor: const Color(0xFFfbc100).withAlpha(60),
                splashColor: const Color(0xFFfbc100).withAlpha(60),
                minWidth: 30,
                onPressed: () {
                  setState(() {
                    currentScreen = screens[3];
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 24,
                      color: currentTab == 3
                          ? const Color(0xFFfbc100)
                          : const Color(0xFF7D7D7D),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'Sevimlilar',
                      style: GoogleFonts.ubuntu(
                        color: currentTab == 3
                            ? const Color(0xFFfbc100)
                            : const Color(0xFF7D7D7D),
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                highlightColor: const Color(0xFFfbc100).withAlpha(60),
                splashColor: const Color(0xFFfbc100).withAlpha(60),
                minWidth: 30,
                onPressed: () {
                  setState(() {
                    currentScreen = screens[4];
                    currentTab = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/profil.png',
                      height: 24,
                      width: 24,
                      color: currentTab == 4
                          ? const Color(0xFFfbc100)
                          : const Color(0xFF7D7D7D),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'Profile',
                      style: GoogleFonts.ubuntu(
                        color: currentTab == 4
                            ? const Color(0xFFfbc100)
                            : const Color(0xFF7D7D7D),
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  },
),
);
  }
}
