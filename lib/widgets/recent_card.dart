import 'package:flutter/material.dart';
import 'package:organico/theme.dart';
import 'package:organico/models/recent_model.dart';

class RecentCard extends StatelessWidget {
  final Recent recent;
  const RecentCard(this.recent, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 26,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
                iconSize: 30,
                color: greyColor,
              ),
              const SizedBox(width: 22),
              Text(
                recent.key,
                style: nunitoTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: greyColor,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                ),
                iconSize: 30,
                color: secondaryRedColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
