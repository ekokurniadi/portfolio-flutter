import 'package:ekokurniadi/app.dart';
import 'package:ekokurniadi/features/navigation_bar/presentations/cubit/navigation_cubit.dart';
import 'package:ekokurniadi/features/portfolio/presentations/cubit/portfolio_cubit.dart';
import 'package:ekokurniadi/features/theme/cubit/theme_cubit.dart';
import 'package:ekokurniadi/injector.dart';
import 'package:ekokurniadi/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:ekokurniadi/injector.dart' as di;

Future<void> main() async {
  await di.init();
  await App.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      title: 'Eko Kurniadi',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => NavigationCubit(),
          ),
          BlocProvider(
            create: (_) => ThemeCubit(),
          ),
          BlocProvider(
            create: (_) => sl<PortfolioCubit>(),
          ),
        ],
        child: const MyHomePage(),
      ),
    );
  }
}
