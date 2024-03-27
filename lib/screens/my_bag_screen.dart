import 'package:flutter/material.dart';
import 'package:organico/models/cart_model.dart';
import 'package:organico/theme.dart';
import 'package:organico/widgets/cart_card.dart';

class MyBagScreen extends StatelessWidget {
  const MyBagScreen({Key? key}) : super(key: key);

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
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
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
        title: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'My Bag',
            style: nunitoTextStyle.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Theme.of(context).primaryColor,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
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
                                        'Popey Shop - New York',
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
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 52,
                                    decoration: const BoxDecoration(),
                                    // ignore: deprecated_member_use
                                    child: ElevatedButton(
                                      // elevation: 0,
                                      // hoverElevation: 0,
                                      // focusElevation: 0,
                                      // highlightElevation: 0,
                                      onPressed: () {},
                                      // shape: RoundedRectangleBorder(
                                      //   borderRadius:
                                      //       BorderRadius.circular(100),
                                      //   side: BorderSide(
                                      //       color: primaryColor, width: 1),
                                      // ),
                                      // color: Colors.transparent,
                                      child: Text(
                                        'Add more +',
                                        style: nunitoTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Address',
                                    style: nunitoTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
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
                                            padding: const EdgeInsets.all(20),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    // ignore: sized_box_for_whitespace
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.58,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Home',
                                                            style:
                                                                poppinsTextStyle
                                                                    .copyWith(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                            ),
                                                            textAlign:
                                                                TextAlign.left,
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          Text(
                                                            '3517 W. Gray St. Utica, Pennsylvania',
                                                            style:
                                                                nunitoTextStyle
                                                                    .copyWith(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: greyColor,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const Spacer(),
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.pushNamed(
                                                            context,
                                                            '/my-address');
                                                      },
                                                      icon: const Icon(
                                                        Icons.create_outlined,
                                                      ),
                                                      iconSize: 20,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Note',
                                    style: nunitoTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: backgroundColor,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: borderColor,
                                      ),
                                    ),
                                    child: TextField(
                                      maxLines: 5,
                                      decoration: InputDecoration(
                                        hintText:
                                            "Please check the product before packaging.",
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12.0)),
                                          borderSide: BorderSide(
                                              color: borderColor, width: 1),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12.0)),
                                          borderSide: BorderSide(
                                              color: primaryColor, width: 2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Coupon',
                                    style: nunitoTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
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
                                            padding: const EdgeInsets.all(20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.pushNamed(
                                                        context, '/coupons');
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Image.asset(
                                                        'assets/icon_coupon.png',
                                                        width: 44,
                                                        height: 44,
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        'Free Shiping',
                                                        style: poppinsTextStyle
                                                            .copyWith(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      IconButton(
                                                        onPressed: () {},
                                                        icon: const Icon(
                                                          Icons.chevron_right,
                                                        ),
                                                        iconSize: 40,
                                                        color: greyColor,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Payment Method',
                                    style: nunitoTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
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
                                            padding: const EdgeInsets.all(20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.pushNamed(context,
                                                        '/payment-method');
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Image.asset(
                                                        'assets/icon_payment.png',
                                                        width: 44,
                                                        height: 44,
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        'Credit Card',
                                                        style: poppinsTextStyle
                                                            .copyWith(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      IconButton(
                                                        onPressed: () {},
                                                        icon: const Icon(
                                                          Icons.chevron_right,
                                                        ),
                                                        iconSize: 40,
                                                        color: greyColor,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Subtotal',
                                        style: nunitoTextStyle.copyWith(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: greyColor,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '\$9.98',
                                        style: nunitoTextStyle.copyWith(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: greyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Delivery Charge',
                                        style: nunitoTextStyle.copyWith(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: greyColor,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '\$1',
                                        style: nunitoTextStyle.copyWith(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: greyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Coupon',
                                        style: nunitoTextStyle.copyWith(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: greyColor,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '- \$1',
                                        style: nunitoTextStyle.copyWith(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: greyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Total',
                                        style: nunitoTextStyle.copyWith(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '\$9.98',
                                        style: nunitoTextStyle.copyWith(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.90,
                                    height: 52,
                                    decoration: const BoxDecoration(),
                                    // ignore: deprecated_member_use
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/my-orders');
                                      },
                                      // shape: RoundedRectangleBorder(
                                      //   borderRadius:
                                      //       BorderRadius.circular(100),
                                      //   side: BorderSide(
                                      //       color: primaryColor, width: 1),
                                      // ),
                                      // color: primaryColor,
                                      child: Text(
                                        'Order Now',
                                        style: nunitoTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: buttonTextColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
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
      ),
    );
  }
}
