import 'package:flutter/material.dart';
import 'package:organico/models/cart_model.dart';
import 'package:organico/theme.dart';
import 'package:organico/widgets/cart_card.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  State<MyCartScreen> createState() => _MyCartScreen();
}

class _MyCartScreen extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    final Color backgroundColor;
    final Color borderColor;
    final Color buttonTextColor;

    if (color == Colors.black) {
      backgroundColor = Colors.white;
      borderColor = const Color(0xffEAEAEA);
      buttonTextColor = Colors.white;
    } else {
      backgroundColor = const Color(0xff1D2335);
      borderColor = const Color(0xff171725);
      buttonTextColor = const Color(0xff171725);
    }
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'My Cart',
                        style: nunitoTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  ClipRRect(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: borderColor,
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/cart_seller.png',
                                      width: 40,
                                      height: 40,
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Popeyshop - New York',
                                      style: poppinsTextStyle.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                CartCard(
                                  CartModel(
                                    id: 1,
                                    imageUrl: 'assets/broccoli.png',
                                    name: 'Broccoli',
                                    price: 2.44,
                                    weight: 1,
                                    backcolor: const Color(0xff76B226)
                                        .withOpacity(0.15),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                CartCard(
                                  CartModel(
                                    id: 2,
                                    imageUrl: 'assets/carrot.png',
                                    name: 'Carrot',
                                    price: 3.44,
                                    weight: 1,
                                    backcolor: const Color(0xffEA812F)
                                        .withOpacity(0.15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 70,
        ),
        child: Container(
          height: 74,
          width: MediaQuery.of(context).size.width - (2 * 0),
          margin: const EdgeInsets.symmetric(
            horizontal: 0,
          ),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total',
                    style: nunitoTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: greyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\$9.98',
                    style: nunitoTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              // ignore: sized_box_for_whitespace
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: 52,
                // ignore: deprecated_member_use
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/my-bag');
                  },
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(100),
                  //   side: BorderSide(color: primaryColor, width: 1),
                  // ),
                  // color: primaryColor,
                  child: Text(
                    'Add to Bag',
                    style: nunitoTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: buttonTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
