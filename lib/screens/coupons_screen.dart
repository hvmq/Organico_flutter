import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:organico/theme.dart';
import 'package:organico/widgets/coupon_card.dart';
import 'package:organico/models/coupon_model.dart';

class CouponsScreen extends StatelessWidget {
  const CouponsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Your Coupons',
            style: nunitoTextStyle.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Theme.of(context).primaryColor,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
                        CouponCard(
                          CouponModel(
                            id: 1,
                            days: 4,
                            name: '14% discount all item',
                            isActive: true,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CouponCard(
                          CouponModel(
                            id: 2,
                            days: 7,
                            name: 'Free Shiping',
                            isActive: true,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CouponCard(
                          CouponModel(
                            id: 3,
                            days: 2,
                            name: '10% discount free shiping',
                            isActive: true,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CouponCard(
                          CouponModel(
                            id: 4,
                            days: 10,
                            name: 'Free Shiping',
                            isActive: false,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
