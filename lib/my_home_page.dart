import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ekokurniadi/core/shared/style.dart';
import 'package:ekokurniadi/features/beranda/pages/beranda.dart';
import 'package:ekokurniadi/features/navigation_bar/presentations/cubit/navigation_cubit.dart';
import 'package:ekokurniadi/features/navigation_bar/presentations/pages/navigation_bar.dart';
import 'package:ekokurniadi/features/portfolio/presentations/cubit/portfolio_cubit.dart';
import 'package:ekokurniadi/features/portfolio/presentations/pages/portfolio.dart';
import 'package:ekokurniadi/features/theme/cubit/theme_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int pageIndex = 0;
  bool mode = false;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: Header(),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        onPressed: () {},
        label: Row(
          children: [
            Image.network(
                'https://assets.tokopedia.net/assets-tokopedia-lite/v2/zeus/kratos/57d0f05a.svg'),
            const SizedBox(width: 5),
            Text(
              'Chat',
              style: Style.defaultTextStyle.copyWith(
                fontWeight: FontWeight.w700,
                color: const Color(0xFF03ac0e),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          BlocBuilder<NavigationCubit, int>(
            builder: (context, state) {
              if (_pageController.hasClients) {
                _pageController.animateToPage(
                  state,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              }
              return PageView(
                scrollDirection: Axis.vertical,
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  BerandaPage(),
                  PortFolioPage()
                ],
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width > 800
          ? const SizedBox()
          : Stack(
              alignment: Alignment.bottomCenter,
              fit: StackFit.loose,
              children: [
                BlocBuilder<NavigationCubit, int>(
                  builder: (context, state) {
                    return AnimatedBottomNavigationBar(
                      icons: const [
                        CupertinoIcons.home,
                        CupertinoIcons.briefcase,
                        CupertinoIcons.book,
                        CupertinoIcons.phone,
                      ],
                      activeIndex: state,
                      onTap: (index) {
                        context.read<NavigationCubit>().setPageIndex(index);
                      },
                      gapLocation: GapLocation.center,
                      notchSmoothness: NotchSmoothness.verySmoothEdge,
                      leftCornerRadius: 30,
                      rightCornerRadius: 30,
                      activeColor: Style.primaryColor,
                      inactiveColor: Colors.grey,
                    );
                  },
                ),
                BlocBuilder<ThemeCubit, ThemeState>(
                  builder: (context, state) {
                    mode = state.themeMode == ThemeStateMode.light;
                    return InkWell(
                      onTap: () {
                        mode = !mode;
                        context.read<ThemeCubit>().setTheme(mode);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 32),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xFF313030),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: Offset.fromDirection(1),
                              )
                            ]),
                        child: Icon(
                          state.themeMode == ThemeStateMode.light
                              ? Icons.dark_mode
                              : Icons.light_mode,
                          color: Colors.yellow,
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
    );
  }
}
