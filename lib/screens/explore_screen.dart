import 'package:flutter/material.dart';
import 'package:organico/theme.dart';
import 'package:organico/widgets/explore_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Explore',
                        style: nunitoTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/icon_filter.png',
                        width: 24,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  const Expanded(
                    child: ExploreCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
