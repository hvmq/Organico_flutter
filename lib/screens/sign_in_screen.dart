import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:organico/theme.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  bool _obscureText = true;
  // ignore: unused_field
  String _password = '';

  // Toggles the password show status
  void _viewPassword() {
    setState(() {
      _obscureText = !_obscureText;
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
                  children: [
                    Container(
                      height: 320,
                      width: 350,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/welcome.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 66,
                    ),
                    Text(
                      'Welcome',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: double.infinity,
                      child: Text(
                        'Welcome to Organico Mobile Apps. Please fill in the field below to sign in.',
                        style: nunitoTextStyle.copyWith(
                          fontSize: 16,
                          color: greyColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextFormField(
                        obscureText: _obscureText,
                        autocorrect: true,
                        validator: (val) =>
                            val!.length < 6 ? 'Password too short.' : null,
                        onSaved: (val) => _password = val!,
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
                      alignment: Alignment.topRight,
                      width: double.infinity,
                      height: 50,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/forgot-password');
                        },
                        child: Text('Forgot Password',
                            style: nunitoTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: primaryColor,
                            ),
                            textAlign: TextAlign.right),
                      ),
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
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        // ),
                        // color: primaryColor,
                        child: Text(
                          'Sign In',
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
                        'Or',
                        style: nunitoTextStyle.copyWith(
                          color: greyColor,
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
                        onPressed: () {
                          Navigator.pushNamed(context, '/sign-up');
                        },
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        //   side: BorderSide(color: greyColor, width: 1),
                        // ),
                        // color: Colors.transparent,
                        child: Text(
                          'Sign Up',
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
