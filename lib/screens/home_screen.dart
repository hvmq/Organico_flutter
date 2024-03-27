import 'package:flutter/material.dart';
import 'package:organico/models/product_model.dart';
import 'package:organico/theme.dart';
import 'package:organico/widgets/category_card.dart';
import 'package:organico/models/category_model.dart';
import 'package:organico/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Your Location',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: darkGreyColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bandung, Chimahi',
                          style: nunitoTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'assets/arrow_down.png',
                          width: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onTap: () {
                        Navigator.pushNamed(context, '/search-view');
                      },
                      autocorrect: true,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: ' Search Anything Here',
                        prefixIcon: const Icon(Icons.search_outlined),
                        hintStyle: nunitoTextStyle.copyWith(
                          color: darkGreyColor,
                          fontWeight: FontWeight.w700,
                        ),
                        filled: true,
                        enabledBorder: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                          borderSide:
                              BorderSide(color: Color(0xffF1F1F5), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                          borderSide: BorderSide(color: primaryColor, width: 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/coupons');
                      },
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icon_coupon.png',
                              width: 44,
                              height: 44,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '  You Have 3 Coupons',
                                  style: nunitoTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Lets use this coupons',
                                  style: nunitoTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: darkGreyColor,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/coupons');
                              },
                              icon: const Icon(
                                Icons.chevron_right,
                              ),
                              iconSize: 40,
                              color: darkGreyColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    Row(
                      children: [
                        Text(
                          'Choose Category',
                          style: nunitoTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const Spacer(),
                        Text(
                          'See all',
                          style: nunitoTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: darkGreyColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 150,
                      decoration: const BoxDecoration(),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CategoryCard(
                            CategoryModel(
                              id: 1,
                              name: 'Vegetables',
                              imageUrl: 'assets/broccoli.png',
                              backcolor:
                                  const Color(0xff76B226).withOpacity(0.25),
                            ),
                          ),
                          const SizedBox(width: 16),
                          CategoryCard(
                            CategoryModel(
                              id: 2,
                              name: 'Banana',
                              imageUrl: 'assets/banana.png',
                              backcolor:
                                  const Color(0xffF3A20C).withOpacity(0.15),
                            ),
                          ),
                          const SizedBox(width: 16),
                          CategoryCard(
                            CategoryModel(
                              id: 3,
                              name: 'Meat',
                              imageUrl: 'assets/meat.png',
                              backcolor:
                                  const Color(0xffFE706E).withOpacity(0.25),
                            ),
                          ),
                          const SizedBox(width: 16),
                          CategoryCard(
                            CategoryModel(
                              id: 1,
                              name: 'Vegetables',
                              imageUrl: 'assets/broccoli.png',
                              backcolor:
                                  const Color(0xff76B226).withOpacity(0.25),
                            ),
                          ),
                          const SizedBox(width: 16),
                          CategoryCard(
                            CategoryModel(
                              id: 2,
                              name: 'Banana',
                              imageUrl: 'assets/banana.png',
                              backcolor:
                                  const Color(0xffF3A20C).withOpacity(0.15),
                            ),
                          ),
                          const SizedBox(width: 16),
                          CategoryCard(
                            CategoryModel(
                              id: 3,
                              name: 'Meat',
                              imageUrl: 'assets/meat.png',
                              backcolor:
                                  const Color(0xffFE706E).withOpacity(0.25),
                            ),
                          ),
                          const SizedBox(width: 16),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    Row(
                      children: [
                        Text(
                          'Best Selling',
                          style: nunitoTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const Spacer(),
                        Text(
                          'See all',
                          style: nunitoTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: darkGreyColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 250,
                      decoration: const BoxDecoration(),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ProductCard(
                            ProductModel(
                              id: 1,
                              imageUrl: 'assets/paprika.png',
                              name: 'Paprika',
                              shop: 'Vegshop',
                              price: 4.99,
                              backcolor:
                                  const Color(0xffE3553F).withOpacity(0.25),
                            ),
                          ),
                          const SizedBox(width: 16),
                          ProductCard(
                            ProductModel(
                              id: 2,
                              imageUrl: 'assets/banana.png',
                              name: 'Banana',
                              shop: 'Fruitmarket',
                              price: 4.68,
                              backcolor:
                                  const Color(0xffF3A20C).withOpacity(0.15),
                            ),
                          ),
                          const SizedBox(width: 16),
                          ProductCard(
                            ProductModel(
                              id: 3,
                              imageUrl: 'assets/broccoli.png',
                              name: 'Broccoli',
                              shop: 'VegMarket',
                              price: 5.99,
                              backcolor:
                                  const Color(0xff76B226).withOpacity(0.15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
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
