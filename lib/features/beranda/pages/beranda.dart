import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ekokurniadi/core/shared/style.dart';
import 'package:ekokurniadi/features/tentang/presentations/pages/tentang_saya.dart';
import 'package:ekokurniadi/features/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          color: state.backgroundColor,
          child: SingleChildScrollView(
            child: MediaQuery.of(context).size.width > 800
                ? Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FadeInLeft(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AnimatedTextKit(
                                        isRepeatingAnimation: true,
                                        repeatForever: true,
                                        animatedTexts: [
                                          TyperAnimatedText(
                                            'MOBILE DEVELOPER',
                                            textStyle:
                                                Style.defaultTextStyle.copyWith(
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold,
                                              color: Style.secondaryColor,
                                            ),
                                            speed: const Duration(
                                                milliseconds: 100),
                                          ),
                                          TyperAnimatedText(
                                            'WEB DEVELOPER',
                                            textStyle:
                                                Style.defaultTextStyle.copyWith(
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold,
                                              color: Style.secondaryColor,
                                            ),
                                            speed: const Duration(
                                                milliseconds: 100),
                                          ),
                                          TyperAnimatedText(
                                            'BACKEND DEVELOPER',
                                            textStyle:
                                                Style.defaultTextStyle.copyWith(
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold,
                                              color: Style.secondaryColor,
                                            ),
                                            speed: const Duration(
                                                milliseconds: 100),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Make it work, make it right, make it fast',
                                        style: Style.defaultTextStyle.copyWith(
                                          color: const Color(0xFFf7471e),
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          'Hai, Perkenalkan nama ku Eko Kurniadi\nAyo Kenali aku lebih lanjut.',
                                          style:
                                              Style.defaultTextStyle.copyWith(
                                            color: state.textBlackOrWhiteColor,
                                            fontSize: 13,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        margin: const EdgeInsets.only(
                                            top: 15, bottom: 20),
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              padding: const EdgeInsets.only(
                                                  top: 15,
                                                  bottom: 15,
                                                  left: 10),
                                              backgroundColor:
                                                  const Color(0xFF01e675),
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50))),
                                          child: Center(
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.whatsapp,
                                                  size: 18,
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  'Contact Me',
                                                  style: Style.defaultTextStyle
                                                      .copyWith(
                                                    fontSize: 16,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Image.asset('assets/dots.png',
                                          width: 150),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            FadeInRight(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Image.network(
                                  'https://app.svgator.com/assets/svgator.webapp/log-in-girl.svg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Container(
                          color: state.backgroundColor,
                          margin: const EdgeInsets.only(
                            right: 30,
                            bottom: 30,
                          ),
                          child: Image.asset('assets/divider.png'),
                        ),
                      ),
                      const TentangSaya(),
                    ],
                  )
                : Column(
                    children: [
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FadeInLeft(
                              child: Container(
                                margin: const EdgeInsets.only(top: 30),
                                width: MediaQuery.of(context).size.width,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AnimatedTextKit(
                                        isRepeatingAnimation: true,
                                        repeatForever: true,
                                        animatedTexts: [
                                          TyperAnimatedText(
                                            'MOBILE DEVELOPER',
                                            textStyle:
                                                Style.defaultTextStyle.copyWith(
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold,
                                              color: Style.secondaryColor,
                                            ),
                                            speed: const Duration(
                                                milliseconds: 100),
                                          ),
                                          TyperAnimatedText(
                                            'WEB DEVELOPER',
                                            textStyle:
                                                Style.defaultTextStyle.copyWith(
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold,
                                              color: Style.secondaryColor,
                                            ),
                                            speed: const Duration(
                                                milliseconds: 100),
                                          ),
                                          TyperAnimatedText(
                                            'BACKEND DEVELOPER',
                                            textStyle:
                                                Style.defaultTextStyle.copyWith(
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold,
                                              color: Style.secondaryColor,
                                            ),
                                            speed: const Duration(
                                                milliseconds: 100),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Make it work, make it right, make it fast',
                                        style: Style.defaultTextStyle.copyWith(
                                          color: const Color(0xFFf7471e),
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          'Hai, Perkenalkan nama ku Eko Kurniadi\nAyo Kenali aku lebih lanjut.',
                                          style:
                                              Style.defaultTextStyle.copyWith(
                                            color: state.textBlackOrWhiteColor,
                                            fontSize: 13,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        margin: const EdgeInsets.only(
                                            top: 15, bottom: 20),
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              padding: const EdgeInsets.only(
                                                  top: 15,
                                                  bottom: 15,
                                                  left: 10),
                                              backgroundColor:
                                                  const Color(0xFF01e675),
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              )),
                                          child: Center(
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.whatsapp,
                                                  size: 18,
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  'Contact Me',
                                                  style: Style.defaultTextStyle
                                                      .copyWith(
                                                    fontSize: 16,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Image.asset('assets/dots.png',
                                          width: 150),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            FadeInRight(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Image.network(
                                  'https://gocodings.web.app/static/media/log-in-girl.b364b667.svg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Container(
                          color: state.backgroundColor,
                          margin: const EdgeInsets.only(
                            right: 30,
                            bottom: 30,
                          ),
                          child: Image.asset('assets/divider.png'),
                        ),
                      ),
                      const TentangSaya(),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
