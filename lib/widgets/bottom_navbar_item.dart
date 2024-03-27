import 'package:flutter/material.dart';
import 'package:organico/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  const BottomNavbarItem(
      {Key? key, required this.imageUrl, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        isActive
            ? Image.asset(
                imageUrl,
                width: 58,
                color: primaryColor,
              )
            : Image.asset(
                imageUrl,
                color: greyColor,
                width: 58,
              ),
        const Spacer(),
      ],
    );
  }
}
