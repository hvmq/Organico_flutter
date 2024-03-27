import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:organico/theme.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

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
            'Forgot Password',
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
        bottom: false,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 320,
                      width: 350,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_forgot_password.png'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Enter Your Phone Number',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'We need to verify you. We will send you a one-time authorization code. ',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: greyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: ' Enter Your Phone Number',
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(0),
                            child: CountryCodePicker(
                              textStyle:
                                  nunitoTextStyle.copyWith(color: greyColor),
                              initialSelection: 'US',
                              searchStyle:
                                  nunitoTextStyle.copyWith(color: greyColor),
                              dialogTextStyle:
                                  nunitoTextStyle.copyWith(color: greyColor),
                            ),
                          ),
                          hintStyle:
                              nunitoTextStyle.copyWith(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100.0)),
                            borderSide:
                                BorderSide(color: borderColor, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100.0)),
                            borderSide:
                                BorderSide(color: primaryColor, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 79,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(),
                      // ignore: deprecated_member_use
                      child: ElevatedButton(
                        // elevation: 0,
                        // hoverElevation: 0,
                        // focusElevation: 0,
                        // highlightElevation: 0,
                        onPressed: () {
                          Navigator.pushNamed(context, '/otp');
                        },
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        // ),
                        // color: primaryColor,
                        child: Text(
                          'Next',
                          style: nunitoTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: buttonTextColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
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
