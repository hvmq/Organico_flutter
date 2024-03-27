import 'package:flutter/material.dart';
import 'package:organico/theme.dart';
import 'package:organico/widgets/change_theme_button_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Profile',
                          style: nunitoTextStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(
                            Icons.notifications_none_outlined,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/notification');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/avatar_profile.png',
                          width: 170,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Jane Doe',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '(307) 555-0133',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: greyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 44,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(),
                      child: Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.dark_mode_outlined),
                              iconSize: 30,
                              color: whiteColor,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Dark Mode',
                            style: poppinsTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          const Spacer(),
                          const ChangeThemeButtonWidget()
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/edit-profile');
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_edit_profile.png',
                              width: 44,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Edit Profile',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/edit-profile');
                              },
                              icon: const Icon(Icons.chevron_right_outlined),
                              iconSize: 30,
                              color: greyColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/my-orders');
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_my_order.png',
                              width: 44,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'My Order',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/my-orders');
                              },
                              icon: const Icon(Icons.chevron_right_outlined),
                              iconSize: 30,
                              color: greyColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/my-wishlist');
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_my_wishlist.png',
                              width: 44,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'My Wishlist',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/my-wishlist');
                              },
                              icon: const Icon(Icons.chevron_right_outlined),
                              iconSize: 30,
                              color: greyColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/my-address');
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_my_address.png',
                              width: 44,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'My Address',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/my-address');
                              },
                              icon: const Icon(Icons.chevron_right_outlined),
                              iconSize: 30,
                              color: greyColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/payment-method');
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_payment_method.png',
                              width: 44,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Payment Method',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/payment-method');
                              },
                              icon: const Icon(Icons.chevron_right_outlined),
                              iconSize: 30,
                              color: greyColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/customer-service');
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_customer_service.png',
                              width: 44,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Customer Service',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, '/customer-service');
                              },
                              icon: const Icon(Icons.chevron_right_outlined),
                              iconSize: 30,
                              color: greyColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/otp');
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_change_password.png',
                              width: 44,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Change Password',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/otp');
                              },
                              icon: const Icon(Icons.chevron_right_outlined),
                              iconSize: 30,
                              color: greyColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/sign-in');
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_logout.png',
                              width: 44,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Logout',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign-in');
                              },
                              icon: const Icon(Icons.chevron_right_outlined),
                              iconSize: 30,
                              color: greyColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
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
