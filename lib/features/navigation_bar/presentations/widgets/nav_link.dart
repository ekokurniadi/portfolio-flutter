import 'package:ekokurniadi/core/shared/style.dart';
import 'package:flutter/material.dart';

class NavigationLink extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final bool isActive;
  const NavigationLink({
    super.key,
    required this.onTap,
    required this.title,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive ?  Colors.red : Colors.transparent,
              width: 2,
            )
          )
        ),
        child: Text(
          title,
          style: Style.defaultTextStyle.copyWith(
            color: Colors.white,
            fontSize: 16,
           
          ),
        ),
      ),
    );
  }
}
