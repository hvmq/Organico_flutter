import 'package:flutter/material.dart';
import 'package:organico/models/order_model.dart';
import 'package:organico/widgets/ongoing_card.dart';

class OngoingScreen extends StatelessWidget {
  const OngoingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  OngoingCard(
                    OrderModel(
                      id: 1,
                      shop: 'Popeyshop - New York',
                      time: '02 March 2021',
                      isConfirmed: true,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
