import 'package:flutter/material.dart';
import 'package:organico/models/order_model.dart';
import 'package:organico/widgets/history_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: 15,
              ),
              child: Column(
                children: [
                  HistoryCard(
                    OrderModel(
                      id: 1,
                      shop: 'Popeyshop - New York',
                      time: '02 March 2021',
                      isConfirmed: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  HistoryCard(
                    OrderModel(
                      id: 2,
                      shop: 'Carte Shop - New York',
                      time: '27 Februari 2021',
                      isConfirmed: false,
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
