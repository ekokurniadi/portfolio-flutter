import 'package:ekokurniadi/core/shared/style.dart';
import 'package:ekokurniadi/features/navigation_bar/presentations/cubit/navigation_cubit.dart';
import 'package:ekokurniadi/features/navigation_bar/presentations/widgets/nav_link.dart';
import 'package:ekokurniadi/features/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  Header({
    super.key,
    this.height = kToolbarHeight + 20,
  });
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);
  ValueNotifier<bool> mode = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return AppBar(
          backgroundColor: state.primaryColor,
          flexibleSpace: Container(
            height: 200,
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MediaQuery.of(context).size.width > 800 ?  MainAxisAlignment.center : MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/avatars.png',
                      ),
                      Text(
                        'eko',
                        style: Style.defaultTextStyle.copyWith(
                          color: const Color(0xFF3252df),
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'kurniadi',
                        style: Style.defaultTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: MediaQuery.of(context).size.width > 800,
                  child: BlocBuilder<NavigationCubit, int>(
                    builder: (context, state) {
                      return Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            NavigationLink(
                              onTap: () {
                                context.read<NavigationCubit>().setPageIndex(0);
                              },
                              title: 'Beranda',
                              isActive: state == 0,
                            ),
                            
                            const SizedBox(width: 10),
                            NavigationLink(
                              onTap: () {
                                context.read<NavigationCubit>().setPageIndex(1);
                              },
                              title: 'Portfolio',
                              isActive: state == 1,
                            ),
                            const SizedBox(width: 10),
                            NavigationLink(
                              onTap: () {
                                context.read<NavigationCubit>().setPageIndex(2);
                              },
                              title: 'Kemampuan',
                              isActive: state == 2,
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: (){
                                context.read<NavigationCubit>().setPageIndex(3);
                              },
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: const Color(0xFF3252df),
                                ),
                                child: Text(
                                  'Kontak',
                                  style: Style.defaultTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color(0xFF313030),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    offset: Offset.fromDirection(1),
                                  )
                                ],
                              ),
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 5, 8, 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            context
                                                .read<ThemeCubit>()
                                                .setTheme(true);
                                          },
                                          child: const Icon(
                                            Icons.light_mode,
                                            color: Colors.yellow,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            context
                                                .read<ThemeCubit>()
                                                .setTheme(false);
                                          },
                                          child: const Icon(
                                            Icons.dark_mode,
                                            color: Colors.yellow,
                                          ),
                                        ),
                                        // SizedBox(width: 5,),
                                      ],
                                    ),
                                  ),
                                  BlocBuilder<ThemeCubit, ThemeState>(
                                    builder: (context, state) {
                                      return Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 5, 8, 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Visibility(
                                              visible: state.themeMode ==
                                                  ThemeStateMode.light,
                                              child: Container(
                                                width: 25,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Visibility(
                                              visible: state.themeMode ==
                                                  ThemeStateMode.dark,
                                              child: Container(
                                                width: 25,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
