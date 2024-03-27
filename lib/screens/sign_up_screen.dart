import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:organico/theme.dart';
import 'package:flutter/material.dart';
import 'package:organico/widgets/sign_up_check_box.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  bool _obscureText = true;

  // Toggles the password show status
  void _viewPassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool _obscureText2 = true;

  // Toggles the Re password show status
  void _viewPassword2() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }

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
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'New Registration',
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
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'It looks like you don’t have an account on this number. Please let us know some information for a secure service.',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: greyColor,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Text(
                      'Full Name',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: darkGreyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
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
                          hintText: ' Full Name',
                          hintStyle:
                              nunitoTextStyle.copyWith(color: Colors.grey),
                          prefixIcon: const Icon(Icons.person),
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
                      height: 16,
                    ),
                    Text(
                      'Phone Number',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: darkGreyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextField(
                        autocorrect: true,
                        keyboardType: TextInputType.number,
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
                                const BorderRadius.all(Radius.circular(100)),
                            borderSide:
                                BorderSide(color: borderColor, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            borderSide:
                                BorderSide(color: primaryColor, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Password',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: darkGreyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextFormField(
                        obscureText: _obscureText,
                        autocorrect: true,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: ' Password',
                          prefixIcon: const Icon(Icons.lock_outlined),
                          hintStyle:
                              nunitoTextStyle.copyWith(color: Colors.grey),
                          suffixIcon: IconButton(
                              onPressed: _viewPassword,
                              icon: const Icon(Icons.remove_red_eye)),
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
                      height: 16,
                    ),
                    Text(
                      'Password Confirmation',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: darkGreyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextFormField(
                        obscureText: _obscureText2,
                        autocorrect: true,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: ' Password Confirmation',
                          prefixIcon: const Icon(Icons.lock_outlined),
                          suffixIcon: IconButton(
                              onPressed: _viewPassword2,
                              icon: const Icon(Icons.remove_red_eye)),
                          hintStyle:
                              nunitoTextStyle.copyWith(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            borderSide:
                                BorderSide(color: borderColor, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            borderSide:
                                BorderSide(color: primaryColor, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(),
                      child: const SignUpCheckBox(),
                    ),
                    const SizedBox(
                      height: 20,
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
                        onPressed: () {},
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        // ),
                        // color: primaryColor,
                        child: Text(
                          'Sign Up',
                          style: nunitoTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: buttonTextColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Or Use',
                        style: nunitoTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: darkGreyColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: double.infinity,
                      height: 50,
                      // ignore: deprecated_member_use
                      child: ElevatedButton(
                        // elevation: 0,
                        // hoverElevation: 0,
                        // focusElevation: 0,
                        // highlightElevation: 0,
                        onPressed: () {},
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        //   side: BorderSide(color: greyColor, width: 1),
                        // ),
                        // color: Colors.transparent,
                        child: Text(
                          'Sign Up With Google',
                          style: nunitoTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).primaryColor,
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
