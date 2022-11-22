import 'package:ekokurniadi/core/shared/style.dart';
import 'package:flutter/material.dart';

class TitleWithDash extends StatelessWidget {
  final String title;
  const TitleWithDash({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Style.defaultTextStyle.copyWith(
            fontSize: 20,
            color: Style.secondaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: 120,
          height: 3,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
