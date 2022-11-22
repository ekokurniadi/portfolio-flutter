import 'package:ekokurniadi/core/shared/widgets/blue_divider.dart';
import 'package:ekokurniadi/core/shared/widgets/title_with_dash.dart';
import 'package:ekokurniadi/core/shared/style.dart';
import 'package:ekokurniadi/features/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TentangSaya extends StatelessWidget {
  const TentangSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          color: state.backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                child: const TitleWithDash(title: 'Tentang Saya'),
              ),
              FadeInDown(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    'Hello, Nama saya Eko Kurniadi, dan saya tinggal di Jambi.\nSaya bekerja remote pada beberapa Project untuk banyak client di Indonesia',
                    textAlign: TextAlign.center,
                    style: Style.defaultTextStyle.copyWith(
                      fontSize: 14,
                      color: state.textBlackOrWhiteColor,
                    ),
                  ),
                ),
              ),
              FadeInDown(
                child: Image.asset(
                  'assets/astronaut.gif',
                  width: 150,
                ),
              ),
              const SizedBox(height: 30),
              const BlueDivider()
            ],
          ),
        );
      },
    );
  }
}
