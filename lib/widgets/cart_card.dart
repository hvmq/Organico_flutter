import 'package:flutter/material.dart';
import 'package:organico/models/cart_model.dart';
import 'package:organico/theme.dart';

class CartCard extends StatefulWidget {
  final CartModel cart;
  const CartCard(this.cart, {Key? key}) : super(key: key);
  @override
  State<CartCard> createState() => _CartCard();
}

class _CartCard extends State<CartCard> {
  int qty = 1;

  void plusQTy() {
    setState(() {
      qty++;
    });
  }

  void minusQty() {
    if (qty > 1) {
      setState(() {
        qty--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: double.infinity,
        color: widget.cart.backcolor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail');
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          widget.cart.imageUrl,
                          width: MediaQuery.of(context).size.width * 0.15,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.cart.name,
                              style: poppinsTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              '${widget.cart.weight} Kilogram',
                              style: nunitoTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: greyColor,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              '\$${widget.cart.price}/Kg',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.10,
                        ),
                        InkWell(
                          onTap: minusQty,
                          child: Image.asset(
                            'assets/btn_minus.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '$qty',
                          style: poppinsTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: plusQTy,
                          child: Image.asset(
                            'assets/btn_plus.png',
                            width: 30,
                            height: 30,
                          ),
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
