import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:organico/theme.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreen();
}

class _DetailScreen extends State<DetailScreen> {
  int qty = 1;

  void plusQTy() {
    setState(() {
      qty++;
    });
  }

  void minusQty() {
    if (qty > 0) {
      setState(() {
        qty--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    final Color buttonTextColor;

    if (color == Colors.black) {
      buttonTextColor = Colors.white;
    } else {
      buttonTextColor = const Color(0xff171725);
    }
    return Scaffold(
      extendBody: true,
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
              Navigator.pushNamed(context, '/');
            },
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: IconButton(
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/my-wishlist');
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 18,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/paprika.png',
                        width: 240,
                        height: 194,
                      ),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Text(
                      'Paprika',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Vegshop',
                          style: nunitoTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: greyColor,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: minusQty,
                          child: Image.asset(
                            'assets/btn_minus.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Text(
                          '$qty',
                          style: poppinsTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        InkWell(
                          onTap: plusQTy,
                          child: Image.asset(
                            'assets/btn_plus.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      '\$4.99 /Kg',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Text(
                      'Details',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Paprika is a fruit-producing plant that tastes sweet and slightly spicy from the eggplant or Solanaceae tribe. Its green, yellow, red, or purple fruit',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: greyColor,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon_time.png',
                          width: 48,
                          height: 48,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Time Delivery',
                              style: nunitoTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              '25 - 30 min',
                              style: nunitoTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: greyColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon_category.png',
                          width: 48,
                          height: 48,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Category',
                              style: nunitoTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Vegetable',
                              style: nunitoTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: greyColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 74,
                      width: MediaQuery.of(context).size.width - (2 * 0),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 0,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.70,
                            height: 52,
                            decoration: const BoxDecoration(),
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
                                'Add to Cart',
                                style: nunitoTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: buttonTextColor,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/contact-seller');
                            },
                            child: Image.asset(
                              'assets/icon_chat.png',
                              width: 52,
                              height: 52,
                            ),
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
    );
  }
}
