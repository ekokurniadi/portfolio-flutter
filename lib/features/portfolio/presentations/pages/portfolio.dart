import 'package:cached_network_image/cached_network_image.dart';
import 'package:ekokurniadi/core/helper/constant_helper.dart';
import 'package:ekokurniadi/core/shared/style.dart';
import 'package:ekokurniadi/core/shared/widgets/title_with_dash.dart';
import 'package:ekokurniadi/features/portfolio/presentations/cubit/portfolio_cubit.dart';
import 'package:ekokurniadi/features/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortFolioPage extends StatelessWidget {
  const PortFolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.backgroundColor,
          body: BlocBuilder<PortfolioCubit, PortfolioState>(
            builder: (context, portfolioState) {
              if (portfolioState.status == PortofolioStatus.initial) {
                context.read<PortfolioCubit>().getData();
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Center(child: CircularProgressIndicator()),
                  ],
                );
              }
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width > 800
                          ? MediaQuery.of(context).size.height * 2.3
                          : MediaQuery.of(context).size.height * 6.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 32),
                            child: FadeInDown(
                              child: const TitleWithDash(title: 'Tentang Saya'),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              margin: MediaQuery.of(context).size.width > 800
                                  ? const EdgeInsets.only(
                                      left: 64, right: 64, top: 20)
                                  : const EdgeInsets.only(
                                      left: 32, right: 32, top: 20),
                              child: FadeIn(
                                child: GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:
                                        MediaQuery.of(context).size.width > 800
                                            ? 3
                                            : 1,
                                    mainAxisSpacing: 20,
                                    crossAxisSpacing: 20,
                                  ),
                                  itemCount: portfolioState.data.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: state.themeMode ==
                                                ThemeStateMode.light
                                            ? Colors.white
                                            : state.primaryColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: state.themeMode ==
                                                ThemeStateMode.light
                                            ? const Color.fromARGB(255, 151, 150, 150)
                                            : state.textBlackOrWhiteColor,
                                            blurRadius: 1,
                                            spreadRadius: 0.5,
                                            blurStyle: BlurStyle.outer,
                                          )
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            children: [
                                              AspectRatio(
                                                aspectRatio: 2,
                                                child: SizedBox(
                                                    width: double.infinity,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topRight:
                                                            Radius.circular(10),
                                                        topLeft:
                                                            Radius.circular(10),
                                                      ),
                                                      child: CachedNetworkImage(
                                                        imageUrl:
                                                            '${ConstantHelper.imageBaseUrl}${portfolioState.data[index].imageCover}',
                                                        fit: BoxFit.fill,
                                                        progressIndicatorBuilder: (context, url, progress) {
                                                          return const Center(child: CircularProgressIndicator());
                                                        },
                                                        errorWidget: ((context,
                                                            url, error) {
                                                          return const FlutterLogo();
                                                        }),
                                                      ),
                                                    )),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20,
                                                        horizontal: 20),
                                                child: Text(
                                                  portfolioState
                                                      .data[index].title,
                                                  textAlign: TextAlign.center,
                                                  style: Style.defaultTextStyle
                                                      .copyWith(
                                                    color: Style.secondaryColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                  vertical: 10,
                                                  horizontal: 20
                                                ),
                                                child: Text(
                                                  portfolioState
                                                      .data[index].description,
                                                  textAlign: TextAlign.center,
                                                  style: Style.defaultTextStyle
                                                      .copyWith(
                                                        fontSize: 13,
                                                    color: state
                                                        .textBlackOrWhiteColor,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional.topEnd,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 5),
                                              height: 30,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffff498b),
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                ),
                                              ),
                                              child: Text(
                                                portfolioState.data[index].phil,
                                                style: Style.defaultTextStyle
                                                    .copyWith(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
