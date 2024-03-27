import 'package:flutter/material.dart';
import 'package:organico/theme.dart';

class ContactSellerScreen extends StatelessWidget {
  const ContactSellerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    final Color backgroundColor;
    final Color borderColor;

    if (color == Colors.black) {
      backgroundColor = Colors.white;
      borderColor = const Color(0xffEAEAEA);
    } else {
      backgroundColor = const Color(0xff1D2335);
      borderColor = const Color(0xff171725);
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
            'Popey Shop - New York',
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
                  children: [
                    ClipRRect(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/broccoli.png',
                              width: 63,
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Broccoli',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Text(
                                  'Popey Shop',
                                  style: nunitoTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: greyColor,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              '\$4.99/Kg',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor,
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: primaryColor.withOpacity(0.60),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Ready ?',
                            style: nunitoTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Image.asset(
                          'assets/avatar_chat.png',
                          width: 63,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/avatar_chat.png',
                          width: 63,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff4D6FF0).withOpacity(0.60),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            '\$4.99/Kg',
                            style: poppinsTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
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
      floatingActionButton: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.73,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                isDense: true,
                hintText: ' Type a Message',
                hintStyle: nunitoTextStyle.copyWith(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                  borderSide: BorderSide(color: borderColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                  borderSide: BorderSide(color: primaryColor, width: 1.5),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {},
            child: Image.asset('assets/icon_send.png', width: 54),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
