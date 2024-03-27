import 'package:flutter/material.dart';
import 'package:organico/theme.dart';
import 'package:organico/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard(this.product, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 242,
        width: 196,
        color: product.backcolor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 15,
                    right: 20,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          product.imageUrl,
                          height: 79,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          product.name,
                          style: poppinsTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          product.shop,
                          style: nunitoTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: darkGreyColor,
                          ),
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$${product.price}/Kg',
                              style: nunitoTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/icon_add.png',
                              width: 36,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
